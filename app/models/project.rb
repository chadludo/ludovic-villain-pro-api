class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many_attached :pictures

  validates :name, presence: true
end
