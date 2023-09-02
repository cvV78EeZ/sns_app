class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  has_one_attached :image
  has_many :comments, dependent: :destroy
end
