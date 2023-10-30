class Post < ApplicationRecord
    belongs_to :users, foreign_key: 'user_id'

    validates :creator, presence: true, length: { maximum: 500 }
    validates :title, presence: true, length: { maximum: 50 }
    validates :content, presence: true
    validates :tag, presence: true, length: { maximum: 50 }
    validates :user_id, presence: true
end
