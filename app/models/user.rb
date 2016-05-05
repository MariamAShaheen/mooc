class User < ActiveRecord::Base
  #require 'thumbs_up'
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#acts_as_commontator
  mount_uploader :image, ImageUploader
	has_many :courses
  
end
