module API::Entities
  class Address < Grape::Entity
  	expose :street, documentation: { type: 'string', desc: 'street' }
  	expose :zip, documentation: { type: 'string', desc: 'zip code' }
  	expose :city, documentation: { type: 'string', desc: 'name of the city' }
  	expose :country, documentation: { type: 'string', desc: 'name of the country' }
  end
end