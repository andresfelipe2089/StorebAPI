require 'rails_helper'

  describe Organization, type: :model do
    describe :validations do
      specify { expect(build(:organization)).to be_valid }
      specify { expect(build(:organization, description: 'Something')).to be_valid }
      specify { expect(build(:organization, title: 3)).not_to be_valid }
      specify { expect(build(:organization, org_type: true)).not_to be_valid }
      specify { expect(build(:organization, title: nil)).not_to be_valid }
      specify { expect(build(:organization, org_type: nil)).not_to be_valid }
  end
end