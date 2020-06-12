require 'rails_helper'

describe "post a park route", :type => :request do
  
  before do
    post '/parks', params: {:name => 'Rivendell', :description => '3 wolf moon pop-up tote bag ramps meditation gentrify chia fixie normcore selvage.', :state=> 'Michigan', :established => "3363", :national => false }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('Rivendell')
  end

  it 'returns the park description' do 
    expect(JSON.parse(response.body)['description']).to eq('3 wolf moon pop-up tote bag ramps meditation gentrify chia fixie normcore selvage.')
  end 

  it 'returns the what state the park is in' do 
    expect(JSON.parse(response.body)['state']).to eq('Michigan')
  end 
end
