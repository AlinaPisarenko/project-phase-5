class User < ApplicationRecord
    has_secure_password
    has_many :projects
    has_many :teams, through: :projects
end
