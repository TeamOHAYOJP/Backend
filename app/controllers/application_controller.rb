class ApplicationController < ActionController::Base
    include DeviseTokenAuth::Concerns::SetUserByToken

    protect_from_forgery
    before_action :skip_session
    skip_before_action :verify_authenticity_token, if: :devise_controller? 
    # helper_method :current_user, :user_signed_in?

    
    # config.session_store :cookie_store, key: '_interslice_session'
    # config.middleware.use ActionDispatch::Cookies # Required for all session management
    # config.middleware.use ActionDispatch::Session::CookieStore, config.session_options

    protected 
        def skip_session
            request.session_options[:skip] = true
        end
end
