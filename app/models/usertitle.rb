class UserTitle < ApplicationRecord
    belongs_to :users, foreign_key: 'user_id'
    belongs_to :titles, foreign_key: 'title_id'
end
