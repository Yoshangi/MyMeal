class MealPlan < ApplicationRecord
	has_many :food
	has_many :user
end
