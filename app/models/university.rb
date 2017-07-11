class University < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  has_many :unive_scores

  def average_score
    unive_scores.count == 0 ? 0 : unive_scores.average(:unive_score).round(2)
  end

end
