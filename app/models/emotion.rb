class Emotion < ActiveRecord::Base
	has_many :post_emotions
	has_many :posts, through: :post_emotions
end
