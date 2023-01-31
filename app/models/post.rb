class Post < ApplicationRecord
  belongs_to :user
  validates :content, length: { minimum: 5 }, presence: true
  validates :title, length: { minimum: 1 }, presence: true
  validates_associated :user
end
