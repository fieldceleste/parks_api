require 'rails_helper'

describe "get all park routes", :type => :request do 
  let!(:parks) {FactoryBot.create_list(:park, 20)}
  
  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end 
end 

