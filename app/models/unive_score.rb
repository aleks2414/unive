class UniveScore < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  validates_numericality_of :unive_score, :less_than_or_equal_to => 5
end
