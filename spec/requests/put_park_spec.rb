require 'rails_helper'

describe "put a park route", :type => :request do
  
  before do
    @park = Park.create( {:id => 2, :name => 'Rivendell', :description => '3 wolf moon pop-up tote bag ramps meditation gentrify chia fixie normcore selvage.', :state=> 'Michigan', :established => 3363, :national => false })
    put '/parks/2', params: { :description => 'Bicycle rights pinterest vinyl mixtape lumbersexual echo kickstarter mustache crucifix ennui narwhal bespoke intelligentsia.' }
  end

  it 'returns the updated description' do
    expect(JSON.parse(response.body)['message']).to eq('This park was updated successfully.')
  end
end