class User < ActiveRecord::Base
  #require 'thumbs_up'
  validates :name , :presence => true
validates :is_female , :presence => true
validates :dateofbirth , :presence => true
validates :image , :presence => true
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#acts_as_commontator
  mount_uploader :image, ImageUploader
	has_many :courses
  has_many :comments
  
end
