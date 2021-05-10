class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tweets

  with_options presence: true do
    validates  :nickname
    validates  :email
  end
end
