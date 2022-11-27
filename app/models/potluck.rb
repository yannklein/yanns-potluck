class Potluck < ApplicationRecord
  belongs_to :user
  has_many :stuffs, dependent: :destroy
end
