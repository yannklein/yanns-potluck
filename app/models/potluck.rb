class Potluck < ApplicationRecord
  belongs_to :user
  has_many :stuffs, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: lambda{ |obj| obj.location_changed? }

  def stuffs_not_owned
    stuffs.where(user: nil)
  end

  def stuffs_owned
    stuffs.where.not(user: nil)
  end
end
