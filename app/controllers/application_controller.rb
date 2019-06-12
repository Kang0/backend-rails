class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    include ActionController::HttpAuthentication::Token::ControllerMethods #don't really know what this does

    before_action :authenticate 
    #this will run before any controller action
    #can't accidently forget to add authentication for controller actions


    private

    def current_user

    end

    def authenticate

    end

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
