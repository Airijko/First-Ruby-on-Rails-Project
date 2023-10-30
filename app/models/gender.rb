class Gender < ApplicationRecord
    has_one :users, foreign_key: 'genders_id'

    validates :name, presence: true
end
