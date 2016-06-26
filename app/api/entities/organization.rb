class Organization < Grape::Entity
	expose :title, documentation: { type: 'string', desc: 'title of the organization' }
	expose :description, documentation: { type: 'string', desc: 'description of the organization' }
	expose :type, documentation: { type: 'string', desc: 'type of organization' }
end