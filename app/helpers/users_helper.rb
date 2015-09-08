module UsersHelper

	def self.find_user(profile_info, uid)
		user = User.where(uid: uid).first_or_initialize
		user.username = profile_info['username']
		user.name = profile_info['displayName']
		user.avatar = profile_info['profileImageURL']
		user.location = profile_info['cachedUserProfile']['location']	
		return user		
	end

end
