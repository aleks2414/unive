class Upload < ActiveRecord::Base
  belongs_to :user
  belongs_to :university

 	mount_uploader :image, ImageUploader # Tells rails to use this uploader for this model.
end
