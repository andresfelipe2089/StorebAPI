module Organization
  class GetOrganizations
    include Interactor

    def call
      context.organizations = ::Organization.all
    end
  end
end
