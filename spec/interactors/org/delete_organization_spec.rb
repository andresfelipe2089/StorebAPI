describe Org::DeleteOrganization, type: :interactor do

  

  let(:organization) { create(:organization) }

  describe '#call' do
    subject { described_class.call(organization_id: organization.id) }

    context 'delete organization by id' do

      it 'is a success ' do
        expect(subject).to  be_a_success
      end
    end  
  end
end
