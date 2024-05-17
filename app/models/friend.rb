class Friend < ApplicationRecord
  belongs_to :user
  has_many :interests, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :meetups, dependent: :destroy
  has_many :gifts, dependent: :destroy

  validates :name, presence: true
end
