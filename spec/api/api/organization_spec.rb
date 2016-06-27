describe API::Organization do

  context 'GET /api/organizations' do
    it 'returns alla the organizations' do
      get '/api/api/organizations'
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq []
    end
  end

  context 'GET /api/statuses/:id' do
    it 'returns an organization by id' do
      organization = Organization.create!
      get "/api/organization/#{organization.id}"
      expect(response.body).to eq organization.to_json
    end
  end
  
end