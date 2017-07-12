class Accreditation < ActiveRecord::Base
  belongs_to :career
  belongs_to :university
  belongs_to :user
end
