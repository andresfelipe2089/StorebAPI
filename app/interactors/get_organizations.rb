class GetOrganizations
  include Interactor

  def call
    if organizations = Organization.all
   	  context.organizations = organizations
    else
      context.fail!(message: "no organizations found")
  	end
  end
end
