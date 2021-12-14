class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  
  acts_as_token_authenticatable

  validates :email, presence: true
end
