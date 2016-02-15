class UsersController < ApplicationController

	def show
		#finds user based on the url parameters
		#@user = User.find(params[:id])
		#grabs all the usersubs for a given user
		@subscribed = current_user.user_subs.all
		#grabs all the subscriptions in existence
		@subs = Subscription.all

		#everything goes down in the show view where it finds the subscriptions
		#a user has and then cross references everything to get the common name
	end
end
