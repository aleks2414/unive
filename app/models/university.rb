class University < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
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


has_many :reviews
has_many :ex_students
has_many :accreditations
has_many :rankings
has_many :current_jobs

  def average_score
    unive_scores.count == 0 ? 0 : unive_scores.average(:unive_score).round(2)
  end

  def average_academic_score
    academic_scores.count == 0 ? 0 : academic_scores.average(:academic_score).round(2)
  end

  def average_party_score
    party_scores.count == 0 ? 0 : party_scores.average(:party_score).round(2)
  end

  def average_satisfaction_score
    satisfaction_scores.count == 0 ? 0 : satisfaction_scores.average(:satisfaction_score).round(2)
  end

  def average_infraestructure_score
    infraestructure_scores.count == 0 ? 0 : infraestructure_scores.average(:infraestructure_score).round(2)
  end

  def average_alumni_score
    alumni_scores.count == 0 ? 0 : alumni_scores.average(:alumni_score).round(2)
  end

  def average_admission_score
    admission_scores.count == 0 ? 0 : admission_scores.average(:admission_score).round(2)
  end

  def average_graduation_score
    graduation_scores.count == 0 ? 0 : graduation_scores.average(:graduation_score).round(2)
  end

  def average_professor_score
    professor_scores.count == 0 ? 0 : professor_scores.average(:professor_score).round(2)
  end

  def average_investment_score
    investment_scores.count == 0 ? 0 : investment_scores.average(:investment_score).round(2)
  end

  def average_finantial_score
    finantial_scores.count == 0 ? 0 : finantial_scores.average(:Finantial_score).round(2)
  end

extend FriendlyId
  friendly_id :name, use: :slugged

end
