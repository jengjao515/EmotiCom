class Post < ActiveRecord::Base
  belongs_to :user
  
  has_many :post_emotions
  has_many :emotions, through: :post_emotions

  accepts_nested_attributes_for :post_emotions
end
