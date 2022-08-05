class Recipe < ApplicationRecord

  has_many :ingredients, dependent: :destroy

  def add_ingredient(substance, amount)
    if ingredients.where(substance: substance).any?
      errors.add(:ingredients, "this recipe already includes #{substance.name}")
      return
    end

    ingredients << Ingredient.new(substance: substance, amount: amount)
  end

end
