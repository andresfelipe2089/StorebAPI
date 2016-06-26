class DeleteOrganization
  include Interactor

  def call
    if organization = Organization.find(params[:id]).destroy
   	  context.organization = organizations
    else
      context.fail!(message: "organization not found or not deleted")
  	end
  end
end