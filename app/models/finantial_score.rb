class FinantialScore < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  validates_numericality_of :finantial_score, :less_than_or_equal_to => 5
end
