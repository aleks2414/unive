class InfraestructureScore < ActiveRecord::Base
  belongs_to :university
  belongs_to :country
  belongs_to :user
end
