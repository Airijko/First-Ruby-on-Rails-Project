class Gender < ApplicationRecord
    has_one :users, foreign_key: 'genders_id'
end
