class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :university

mount_uploader :image2, Image2Uploader # Tells rails to use this uploader for this model.
end
