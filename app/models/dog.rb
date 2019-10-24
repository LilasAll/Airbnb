class Dog < ApplicationRecord
	has_many :stroll
	has_many :dogsitters, through: :strolls
end
