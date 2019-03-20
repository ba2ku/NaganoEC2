class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:kanji_last, :kanji_first, :katakana_first, :katakana_last, :phone_number])
    end

end
