class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {greater_than: 0.01}

  has_one :categories
  def self.by_letter(letter)
    where("name Like ?", "#{letter}%").order(:name)
  end
end