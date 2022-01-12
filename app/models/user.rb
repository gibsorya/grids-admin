class User < ApplicationRecord
    validates :username, presence: true
    validates :name, presence: true
    validates :email, presence: true
    has_secure_password

    has_many :assignments
    has_many :roles, through: :assignments
end
