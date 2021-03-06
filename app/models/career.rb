class Career < ActiveRecord::Base
  belongs_to :user
  belongs_to :university

has_many :reviews
has_many :ex_students
has_many :accreditations
has_many :rankings
has_many :current_jobs

extend FriendlyId
  friendly_id :name, use: :slugged
end
