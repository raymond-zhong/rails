class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages
  # has_many :users, through: :messages
  validates :content, presence: true
  validates :title, presence: true, length: { minimum: 7 }
end
