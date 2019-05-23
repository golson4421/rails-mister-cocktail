class Dose < ApplicationRecord
  validates :description, presence: true
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
  belongs_to :cocktail
  belongs_to :ingredient
end





