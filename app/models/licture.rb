class Licture < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  belongs_to :course

end
