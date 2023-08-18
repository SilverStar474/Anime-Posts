class Bad < ApplicationRecord
    validates :title, :body, :categories, presence: true
    has_many :comments, dependent: :destroy
    belongs_to :user
end
