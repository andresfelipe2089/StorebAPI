require 'rails_helper'

RSpec.describe Organization, type: :model do
   it "orders by title" do
    company = Organization.create!(title: "company", description: "ninguna", type: "basuras")
    empresa = Organization.create!(title: "empresa", description: "ninguna", type: "fiestas")

    expect(Organization.ordered_by_title).to eq([company, empresa])
  end
end