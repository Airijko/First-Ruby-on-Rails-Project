class Continent < ApplicationRecord
    has_many :countries
end
class Continent < ApplicationRecord
    has_many :countries

    validates :name, presence: true
end
