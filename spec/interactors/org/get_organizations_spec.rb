describe Org::GetOrganizations, type: :interactor do
  before do
    Rails.application.load_seed
  end

  describe '#call' do
    subject { described_class.call }

    context 'get organization' do

      it 'is a success ' do
        expect(subject).to be_a_success
      end
    end  
  end
end