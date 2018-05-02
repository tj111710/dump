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
            
            select: function(startDate, endDate) {
                $.getScript('events/new')
                
            }
        });
    })
};

$(document).on('turbolinks:load', initialize_calendar);
