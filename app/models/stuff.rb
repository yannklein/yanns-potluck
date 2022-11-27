class Stuff < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :potluck
end
