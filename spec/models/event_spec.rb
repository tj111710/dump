require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validation tests' do
    it 'ensures title presence' do
    event = Event.new(email: 'email', phone: '1', street: '1', city: 'a', state: 'b', zip: '1').save
    expect(event).to eq(false)
    end
    
    it 'ensures phone number presence' do
    event = Event.new(title: 'a', email: 'a', street: 'a', city: 'a', state: 'a', zip: 'a').save
    expect(event).to eq(false)
    end
    
    it 'ensures street number presence' do
    event = Event.new(title: 'a', email: 'a', phone: 'a', city: 'a', state: 'a', zip: 'a').save
    expect(event).to eq(false)
    end    
    
    it 'ensures city presence' do
    event = Event.new(title: 'a', email: 'a', phone: 'a', street: 'a', state: 'a', zip: 'a').save
    expect(event).to eq(false)
    end 
    
    it 'ensures state presence' do
    event = Event.new(title: 'a', email: 'a', phone: 'a', street: 'a', city: 'a', zip: 'a').save
    expect(event).to eq(false)
    end  
    
    it 'ensures zip presence' do
    event = Event.new(title: 'a', email: 'a', phone: 'a', street: 'a', city: 'a', state: 'a').save
    expect(event).to eq(false)
    end 
    
    it 'should save succesfully' do
    event = Event.new(title: 'a', email: 'a', phone: 'a', street: 'a', city: 'a', state: 'a', zip: 'a').save
    expect(event).to eq(true)
    end    
  end
  
  context 'scope tests' do
  end
end


