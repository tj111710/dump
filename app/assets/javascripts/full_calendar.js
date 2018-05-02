var initialize_calendar;
initialize_calendar = function () {
    $('#calendar').each(function(){
        var calendar = $(this);
        calendar.fullCalendar({
            header: {

            },
            selectable: true,
            selectHelper: true,
            editable: true,
            eventLimit: true,
            events: '/events.json',
            
      select: function(start, end) {
        $.getScript('/events/new', function() {
          $('#event_date_range').val(moment(start).format("MM/DD/YYYY HH:mm") + ' - ' + moment(end).format("MM/DD/YYYY HH:mm"))
       ;
          $('.start_hidden').val(moment(start).format('YYYY-MM-DD HH:mm'));
          $('.end_hidden').val(moment(end).format('YYYY-MM-DD HH:mm'));
        });

        calendar.fullCalendar('unselect');
      },

      eventDrop: function(event, delta, revertFunc) {
        event_data = { 
          event: {
            id: event.id,
            start: event.start.format(),
            end: event.end.format()
          }
        };
        $.ajax({
            url: event.update_url,
            data: event_data,
            type: 'PATCH'
        });
      },
        });
    })
};

$(document).on('turbolinks:load', initialize_calendar);