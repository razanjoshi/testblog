class Post < ActiveRecord::Base
  attr_accessible :description, :title, :picture
  mount_uploader :picture, PictureUploader
  belongs_to :user
end
