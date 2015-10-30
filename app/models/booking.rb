class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :space
  validates :no_of_rooms, presence: true
  validates :no_of_rooms, numericality:{ greater_than: 0 }
  enum status: [ :accepted, :pending, :reject ]


  def username booking
		id= booking.client_id
		user = User.find_by_id(id)	
		email = user.email
	end

	
end
