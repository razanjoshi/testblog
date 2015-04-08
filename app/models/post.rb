class Post < ActiveRecord::Base
  attr_accessible :description, :title, :picture
  mount_uploader :picture, PictureUploader
  belongs_to :user
  has_many :comments

def self.search(search)
	if search
    	find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
  	else
    	find(:all)
  	end
end

end
