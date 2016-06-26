class UpdateOrganization
  include Interactor

  def call
    organization = Organization.update(context.title, context.description, context.type)
    if organization
    	context.organization = organization
    else
    	context.fail!(message: "Organization not updated")
    end
  end  
end