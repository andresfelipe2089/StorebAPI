require 'rails_helper'

describe API::OrganizationApi do

  context 'GET /organizations' do
    it 'returns all the organizations' do
      get '/api/organizations'
      expect(response.status).to eq(200)
    end
  end

  context 'GET /organizations/:id' do
    let(:organization) { create(:organization) }

    it 'returns an organization by id' do
      get "/api/organizations/#{organization.id}"
      expect(response.status).to eq (200)
    end
  end
  
end