class SatisfactionScore < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
end
