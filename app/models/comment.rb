class Comment < ApplicationRecord
  validates :name, :body, :email, presence: true
  belongs_to :bad
end
