describe Org::GetOrganization, type: :interactor do
  before do
    Rails.application.load_seed
  end

  org = Organization.create!(title: 'test', description: 'test', org_type: 'none')

  let(:id) { org.id }

  describe '#call' do
    subject { described_class.call(organization_id: id) }

    context 'get organization by id' do

      it 'is a success ' do
        expect(subject).to  be_a_success
      end
    end  
  end
end