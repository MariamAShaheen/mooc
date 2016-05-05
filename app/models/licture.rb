class Licture < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  belongs_to :course
  has_many :comments
  acts_as_commontable
  acts_as_votable
  #commontator_thread_show(@licture)
end
