require 'rails_helper'

RSpec.describe EventsController, type: :controller do
    context 'GET #index' do
        it 'returns a success response' do
            get :index
            expect(response).to be_successful
        end
    end
    
    context 'GET #show' do
        it 'returns a success response' do
            event = Event.create!(title: 'a', email: 'a', phone: 'a', street: 'a', city: 'a', state: 'a', zip: 'a')
            get :show, params: { id: event.to_param }
            expect(response).to be_successful
        end
    end
    

end
