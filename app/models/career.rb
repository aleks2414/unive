class Career < ActiveRecord::Base
  belongs_to :user
  belongs_to :university
  belongs_to :country
end