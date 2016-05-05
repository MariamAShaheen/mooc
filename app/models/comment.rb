class Comment < ActiveRecord::Base
#atrr_accessible :body, :licture_id
validates :body , :presence => true
#validates :licture_id , :presence => true
belongs_to :licture
belongs_to :user
end
