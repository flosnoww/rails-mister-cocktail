class Dose < ApplicationRecord
  CATEGORY = ["ice", "mint leaves", "brown sugar", "apple", "berries", "tomato", "apricot", "cinamon"]
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]
end
