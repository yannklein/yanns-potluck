class Potluck < ApplicationRecord
  belongs_to :user
  has_many :stuffs, dependent: :destroy

  def stuffs_not_owned
    stuffs.where(user: nil)
  end

  def stuffs_owned
    stuffs.where.not(user: nil)
  end
end
