class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :comment_box, presence: true
end
