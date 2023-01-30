class Post < ApplicationRecord
  belongs_to :user
  validates :content { minimum: 5 }, presence: true
  validates :user, presence: true

end
