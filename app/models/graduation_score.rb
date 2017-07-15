class GraduationScore < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
end
