require 'rails_helper'

describe "delete a park route", :type => :request do

  before do 
    @park = Park.create( {:id => 2, :name => "Grey Mountains", :state => "Florida", :national => true, :established => 3609, :description => "Bicycle rights pinterest vinyl mixtape lumbersexual echo kickstarter mustache crucifix ennui narwhal bespoke intelligentsia."})
    delete '/parks/2'
  end

  it 'returns the deleted content' do
    expect(JSON.parse(response.body)['message']).to eq('This park has been successfully deleted!')
  end

  it 'returns a deleted status' do 
    expect(response).to have_http_status(200)
  end

  it 'returns error message if there is no id match for deleted item' do
    delete '/parks/1'
    expect(response).to have_http_status(404)
  end
end