class Team < ApplicationRecord
    has_many :projects
    has_many :users, through: :projects
end
