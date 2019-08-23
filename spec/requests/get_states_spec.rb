require 'rails_helper'
FactoryBot.find_definitions

describe "get all states route", :type => :request do
  let!(:states) { FactoryBot.create(:state)}

  before { get '/v1/states'}

  it 'returns all states' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
