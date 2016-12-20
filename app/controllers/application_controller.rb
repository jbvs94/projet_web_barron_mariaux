class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_filter:authenticate_utilisateur!, execept:[:index,:show]
    before_action :configure_permitted_parameters, if: :devise_controller?
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in) do |utilisateur_params|
            utilisateur_params.permit(:username, :email)
        end

        devise_parameter_sanitizer.permit(:sign_up) do |utilisateur_params|
            utilisateur_params.permit(:email, :password, :password_confirmation)
        end
    end
end
