class GetOrganization
  include Interactor

  def call
    if organization = Organization.find(params[:id])
   	  context.organization = organizations
    else
      context.fail!(message: "organization not found")
  	end
  end
end