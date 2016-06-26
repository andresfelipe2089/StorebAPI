class API::Organization < Grape::API

  #Api Format, configures the format to json
  format :json
  default_format :json


  resource :organizations do

  	desc 'Return all the organizations'
  	get do
  	  result = GetOrganizations.call
  	  error!(result.error, :not_found) if result.failure?
  	end

  	desc 'Return an Organization'
  	params do
  	  requires :id, type: String, desc: 'organization id'
  	end
  	route_param :id do
  	  get do
  	    result = GetOrganization.call
  	    error!(result.error, :not_found) if result.failure?
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
  	  result = CreateOrganization.call(title: params[:title],
                                       description: params[:description],
                                       type: params[:type] )
  	  error!(result.error, :not_found) if result.failure? 
  	end


    desc 'update an organization'
    params do
      requires :id,
                type: String, 
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
    put ':id' do
      result = UpdateOrganization.call(title: params[:title],
                                       description: params[:description],
                                       type: params[:type] )
      error!(result.error, :not_found) if result.failure? 
    end


    desc 'Delete an Organization'
    params do
      requires :id,
                type: String, 
                desc: 'Organizations ID.'
    end
    delete ':id' 
      result = DeleteOrganization.call(id: params[:id])
      error!(result.error, :not_found) if result.failure? 
    end
    
  end
end
