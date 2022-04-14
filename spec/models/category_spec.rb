require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Associations" do
    it "belong to food" do
      category = Category.new(
      name: 'Drink',
    )

      should respond_to(:food)
    end
  end
end
