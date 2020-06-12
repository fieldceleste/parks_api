require 'rails_helper'

describe "post a park route", :type => :request do
  
  before do
    post '/parks', params: {:name => 'Rivendell', :description => '3 wolf moon pop-up tote bag ramps meditation gentrify chia fixie normcore selvage.', :state=> 'Michigan', :established => 3363, :national => false }
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

  it 'returns the the year the park was established' do 
    expect(JSON.parse(response.body)['established']).to eq(3363) 
  end

  it 'returns if the park is a national park or not' do 
    expect(JSON.parse(response.body)['national']).to eq(false) 
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "Receive exception on Post park route", :type => :request do

  before do
    post '/parks', params: {:name => '', :description => '3 wolf moon pop-up tote bag ramps meditation gentrify chia fixie normcore selvage.', :state=> 'Michigan', :established => 3363, :national => false }
  end

  it 'returns a 422 error status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
