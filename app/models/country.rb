class Country < ActiveRecord::Base
	has_many :universities, dependent: :destroy
	has_many :unive_scores
has_many :academic_scores
has_many :party_scores
has_many :satisfaction_scores
has_many :infraestructure_scores
has_many :alumni_scores
has_many :admission_scores
has_many :graduation_scores
has_many :professor_scores
has_many :investment_scores
has_many :finantial_scores
has_many :careers
end
