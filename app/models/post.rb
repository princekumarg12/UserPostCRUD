class Post < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: :true
  has_one_attached :image
  has_many :comments
end
