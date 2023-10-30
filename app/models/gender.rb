class Gender < ApplicationRecord
    has_one :user, foreign_key: 'genders_id'
end
