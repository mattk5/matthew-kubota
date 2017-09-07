class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable and :omniauthable
  # Place :registerable below if you want to allow people to sign up as admins for this app.
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
end
