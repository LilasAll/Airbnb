class Dogsitter < ApplicationRecord
	has_many :stroll
	has_many :dogs, through: :strolls
end
