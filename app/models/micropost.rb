class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites, class_name: 'Favorite', foreign_key: 'like_id', dependent: :destroy
  has_many :likers, through: :favorites, source: :user
end
