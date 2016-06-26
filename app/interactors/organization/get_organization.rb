class GetOrganization
  include Interactor

  def call
    get_organization || fail_attempt
  end

  private 

  def get_organization 
  	organization = Organization.find(id: organization_id)
  	
  	if organization.present?
  	  context.organization = organization
  	  return true
  	end
  end

  def fail_attempt
    context.fail!(message: 'Organization not found')
  end

  def organization_id
  	context.organization_id
  end
end