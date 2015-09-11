class PostEmotion < ActiveRecord::Base
  belongs_to :emotion
  belongs_to :post
end
