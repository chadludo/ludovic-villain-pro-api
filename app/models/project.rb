class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image

  validates :name, presence: true
end
