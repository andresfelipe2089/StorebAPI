class API::Organization < Grape::API

  #Api Format, configures the format to json
  format :json
  default_format :json


  resource :organizations do

  	desc 'Return all the organizations'
  	get do
  	  result = Organization::GetOrganizations.call
      error!(result.error, :not_found) if result.failure?
      present results.organizations, with: Organization
  	end


  	desc 'Return an Organization'
  	params do
  	  requires :id, 
                type: Integer, 
                desc: 'organization id',
                values: (1..1_000_000)
  	end
  	route_param :id do
  	  get do
  	    result = Organization::GetOrganization.call(organization_id: params[:id])
  	    error!(result.error, :not_found) if result.failure?
        Organization.represent(result.organization)
  	  end
  	end 


  	desc 'Create an organization'
  	params do
  		requires :title, 
  				  type: String,
  				  desc: 'Title of the company'
  		requires :description,
  				  type: String,
  				  desc: 'Description of the company'
  		requires :type,
  				  type: String,
  				  desc: 'type of company' 
  	end
  	post do
  	  result = Organization::CreateOrganization.call(title: params[:title],
                                       description: params[:description],
                                       type: params[:type] )
  	  error!(result.error, :unprocessable_entity) if result.failure? 
  	end


    desc 'update an organization'
    params do
      requires :id,
                type: Integer, 
                desc: 'Organizations ID.'
      optional :title, 
                type: String,
                desc: 'Title of the company'
      optional :description,
                type: String,
                desc: 'Description of the company'
      optional :type,
                type: String,
                desc: 'type of company' 
    end
    route_param :id do
      put do
        result = Organization::UpdateOrganization.call(title: params[:title],
                                         description: params[:description],
                                         type: params[:type] )
        error!(result.error, :unprocessable_entity) if result.failure? 
      end
    end
    

    desc 'Delete an Organization'
    params do
      requires :id,
                type: Integer, 
                desc: 'Organizations ID.',
                values: (1..1_000_000)
    end
    route_param :id do
      delete do
        result = Organization::DeleteOrganization.call(organization_id: params[:id])
        error!(result.error, :unprocessable_entity) if result.failure? 
      end
    end
    
    
  end
end
