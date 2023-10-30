class User < ApplicationRecord
    belongs_to :gender, foreign_key: 'genders_id'
    belongs_to :country
    has_many :posts
    has_many :user_titles
    has_many :titles, through: :user_titles
end
