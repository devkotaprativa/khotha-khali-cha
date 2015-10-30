class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :space
  validates :no_of_rooms, presence: true
  validates :no_of_rooms, numericality:{ greater_than: 0 }
end
