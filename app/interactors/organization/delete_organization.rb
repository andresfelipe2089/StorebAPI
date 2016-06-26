class DeleteOrganization
  include Interactor

  def call
    delete_organization || fail_attempt
  end

  private

  def delete_organization
  	organization = Organization.find(:id organization_id).destroy
  	if organization.destroyed?
  	  return true
  	end
  end

  def fail_attempt
    context.fail!(error: "organization cannot be deleted #{organization_errors}")
  end

  def organization_errors
  	organization.errors.full_messages.to_sentence
  end

  def organization_id
  	context.organization_id
  end
end