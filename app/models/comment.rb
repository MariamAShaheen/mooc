class Comment < ActiveRecord::Base
#atrr_accessible :body, :licture_id
belongs_to :licture
end
