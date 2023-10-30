class User < ApplicationRecord
    belongs_to :gender, foreign_key: 'genders_id'
    belongs_to :country
    has_many :posts
    has_many :user_titles
    has_many :titles, through: :user_titles

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :bio, length: { maximum: 1000 }
    validates :genders_id, presence: true
    validates :country_id, presence: true
end
