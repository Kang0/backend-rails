class AuthController < ApplicationController

    skip_before_action :authenticate, only: [:login]
    #we don't need to authenticate loginning in, since that is the point of the login page

    #post to /login with { username: 'some_thing', password: 'some password'}

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            token = encode( {user_id: user.id} )
            render json: { token: token, success: true }
        else
            render json: { success: false }
        end
        
    end

end