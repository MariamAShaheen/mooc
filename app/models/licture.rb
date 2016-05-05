class Licture < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates :course_id , :presence => true
  validates :content , :presence => true
  validates :attachment , :presence => true
  belongs_to :course
  has_many :comments
  acts_as_votable
  #commontator_thread_show(@licture)
end
