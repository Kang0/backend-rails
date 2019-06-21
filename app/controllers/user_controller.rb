class UserController < ApplicationController

    skip_before_action :authenticate, only: [:login, :create]

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            current_user = user
            token = encode( {user_id: user.id} )
            render :json => {:user => user, :token => token}
        else
            render json: { errors: 'Invalid username / password'}, status: :unauthorized
        end
    end

    def create
        user = User.new(user_params)

        if user.save
            user.create_locker(currency: 0)
            render json: { status: 'User successfully created '}, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end


    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end

    def show_challenges
        challenges = Challenge.where(user_id: current_user.id)
        render json: challenges 
        # render :json => { :challenges => challenges.as_json(include: {calendars: {only: [:years, :months, :date]} } )} 
        # showing challenges and the associated calendaer objects as a nested attribute in each challenge
    end

    def find_user
        render json: current_user, only: [:id, :username, :email]
    end

    def show_locker
        locker = Locker.find_by(user_id: current_user.id)
        render json: locker, except: [:created_at, :updated_at]
    end

    def update_locker
        locker = current_user.locker
        locker.update(currency: params["currency"])
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end