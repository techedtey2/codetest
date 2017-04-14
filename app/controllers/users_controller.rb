class UsersController < ApplicationController
	def show
	end

	def edit
		@user = current_user
	end

	def update
		current_user.update(user_params)
		redirect_to user_path(current_user)
	end

	private
		def user_params
      params.require(:user).permit(	:first_name, :last_name, :date_of_birth, :street_1, :street_2,
      															:city, :state, :country, :zip_code)
		end
end