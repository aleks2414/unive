class AdmissionScore < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  validates_numericality_of :admission_score, :less_than_or_equal_to => 5
end
