class Country < ActiveRecord::Base
	has_many :universities, dependent: :destroy
	has_many :unive_scores
end
