class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        if resource.class == User
            posts_path
        end
    end

    protected

    def configure_permitted_parameters
        edit_attribute = [:avatar]
        register_attribute = [:name, :avatar, :gender]


        devise_parameter_sanitizer.permit(:sign_up, keys: register_attribute)
        devise_parameter_sanitizer.permit(:account_update, keys: edit_attribute)
    end
    
end
