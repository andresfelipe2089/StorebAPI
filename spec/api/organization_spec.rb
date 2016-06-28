require 'rails_helper'

describe API::OrganizationApi do

  context 'GET /organizations' do
    it 'returns all the organizations' do
      get '/api/organizations'
      expect(response.status).to eq(200)
      ##expect(JSON.parse(response.body)).to eq []
    end
  end

  context 'GET /organizations/:id' do
    it 'returns an organization by id' do
      organization = Organization.create!(title: 'hola', description: 'me gusta', org_type: 'funciona')
      get "/api/organizations/#{organization.id}"
      expect(response.status).to eq (200)
    end
  end
  
end