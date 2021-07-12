class ApplicationController < ActionController::Base
    include DeviseTokenAuth::Concerns::SetUserByToken

    skip_before_action :verify_authenticity_token
    helper_method :current_user, :user_signed_in?

    before_action :skip_session
    
    # config.session_store :cookie_store, key: '_interslice_session'
    # config.middleware.use ActionDispatch::Cookies # Required for all session management
    # config.middleware.use ActionDispatch::Session::CookieStore, config.session_options

    # protect_from_forgery
    protected 
        def skip_session
            request.session_options[:skip] = true
        end
end
