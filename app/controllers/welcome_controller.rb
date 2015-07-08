class WelcomeController < ApplicationController
	def create
		@guest = Guest.new(guest_params)
		if @guest.save
			UserMailer.welcome_email(@guest.email).deliver
			redirect_to :back
		else
			render :index
		end
	end
	private
  def guest_params
    params.require(:guest).permit(:email)
  end
end
