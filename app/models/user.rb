class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  has_many :posts

  ADMIN_ROLE = 1
	NORMAL_ROLE = 0

  def is_admin?
  	self.role == ADMIN_ROLE
  end

  def is_normal?
  	self.role == NORMAL_ROLE
  end

end
