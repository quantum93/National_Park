require 'rails_helper'

describe "post a state route", :type => :request do

  before do
    post '/v1/states', params: { :state_name => 'Tae Land'}
  end

  it 'returns the state name' do
    expect(JSON.parse(response.body)['state_name']).to eq('Tae Land')
  end

  it 'returns a success status' do
    # byebug
    # expect(response).to have_http_status(:created)
    expect(response).to have_http_status(:success)
  end
end
