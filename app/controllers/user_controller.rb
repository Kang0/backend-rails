class UserController < ApplicationController

    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end

    def show_challenges
        challenges = Challenge.find_by(user_id: current_user.id)
        binding.pry
    end

    def find_user
        user = User.find_by(username: params[:username])
        render json: user, only: [:id, :username, :email]
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end