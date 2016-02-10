class UserSubsController < ApplicationController
	def index
	end

	def show
	end

	def create
		sub = Subscription.find(params[:subscription_id])
		current_user.subscribe(sub)
		redirect_to subscription_path(sub)
	end

	def destroy
		#needs to be .subscription at end
		sub = UserSub.find(params[:id]).subscription
		current_user.unsubscribe(sub)
		#subscriptions_path (plural because we want all)
		#redirect to profile page if the destroy call came from there.
		redirect_to(request.referer.include?("/users/#{current_user.id}") ? :back : subscriptions_path)
	end
end
