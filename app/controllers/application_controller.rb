class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    include ActionController::HttpAuthentication::Token::ControllerMethods #don't really know what this does

    before_action :authenticate 
    #this will run before any controller action
    #can't accidently forget to add authentication for controller actions

    def current_user
        @current_user ||= authenticate #since the method authenticate already returns a user
    end
    
    def authenticate

        authenticate_or_request_with_http_token do |token| #this is what the action controller httpauthentication gives
            begin
                decoded = decode(token)
                @current_user = User.find_by(id: decoded[0]["user_id"])
            rescue JWT::DecodeError
                render json: { authorized: false}, status: 401
            end
        end

    end

    private

    #JWT METHODS 

    def secret_key
        'secret'
    end
    #not the best security to just have a random string, be better to receive an random string

    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end

    def decode(token)
        JWT.decode(token, secret_key, true, { algorithm: 'HS256' })
    end

end
