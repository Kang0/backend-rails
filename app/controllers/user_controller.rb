class UserController < ApplicationController

    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end

    def show_challenges
        challenges = Challenge.where(user_id: current_user.id)
        render json: challenges, except: [:created_at, :updated_at]
        # only: [:id, :name, :daysLeft, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick]
    end

    def find_user
        render json: current_user, only: [:id, :username, :email]
    end

    def show_locker
        locker = Locker.find_by(user_id: current_user.id)
        render json: locker, except: [:created_at, :updated_at]
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end