module SpacesHelper
	def check_user other_id
		current_user.id == other_id
	end
end
