require 'rails_helper'


describe "get all park routes", :type => :request do 
  let!(:parks) {FactoryBot.create_list(:park, 20)}
  
  before { get '/parks'}

  it 'returns search results for park' do
    @park = Park.create( {:id => 2, :name => 'Rivendell', :description => '3 wolf moon pop-up tote bag ramps meditation gentrify chia fixie normcore selvage.', :state=> 'Michigan', :established => 3363, :national => false })
    get '/search?query=3363'
    expect(JSON.parse(response.body).size).to eq(1)
  end
end