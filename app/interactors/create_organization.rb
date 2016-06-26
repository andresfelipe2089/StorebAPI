class CreateOrganization
  include Interactor

  def call
    organization = Organization.new(context.title, context.description, context.type)
    if organization.save
    	context.organization = organization
    else
    	context.fail!(message: "Organization not created")
    end
  end  
end