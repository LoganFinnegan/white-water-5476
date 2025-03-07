class Recipe < ApplicationRecord
   validates_presence_of :name, :complexity, :genre

   has_many :recipe_ingredients
   has_many :ingredients, through: :recipe_ingredients

   def total_cost
      x = self.ingredients.map do |ing|
         ing.cost
      end.sum
   end
end