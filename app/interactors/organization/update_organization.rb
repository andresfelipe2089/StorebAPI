class UpdateOrganization
  include Interactor

  def call
    update_organization || fail_attempt
  end  


  private 

  def update_organization
    @organization = Organization.update(organization_params)
    if @organization
      context.organization = @organization
      return true
    end
  end

  def organization_errors
  	organization.errors.full_messages.to_sentence
  end

  def fail_attempt
  	context.fail!(:error "Organization cannot be updated #{organization_errors}")
  end
  
  def organization_params
  	{
  	  title: context.title,
  	  description: context.description,
  	  type: context.type
  	}
  end
end