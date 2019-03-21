class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        if current_user.admin_user?
            ad_top_path
        else
            user_mypage_path(current_user.id)
        end
    end

    def authenticate_user_admin
        if current_user.admin_user?
        else
            redirect_to root_path
        end
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:kanji_last, :kanji_first, :katakana_first, :katakana_last, :phone_number,addresses_attributes: [:id,:user_id, :postcode,:_destroy]])
        devise_parameter_sanitizer.permit(:sign_up,  keys: [:admin_user])
        devise_parameter_sanitizer.permit(:account_update, keys: [:admin_user])
    end

end