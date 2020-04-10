require "rails_helper"

RSpec.describe Store, type: :model do
  describe "Validations" do
    it "has a valid factory" do
      store = create(:store)
      binding.pry
      expect(store).to be_valid
    end
  end

  describe "ActiveRecord associations" do
    it { should have_and_belong_to_many(:store_products) }
  end
end
