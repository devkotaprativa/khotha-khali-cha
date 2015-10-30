module ApplicationHelper
	def username booking
		id= booking.client_id
		name = Booking.find_by_id(id)
	end
end
