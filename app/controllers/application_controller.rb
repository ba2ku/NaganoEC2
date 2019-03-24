class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :search

    def header_name_display
        if user_signed_in?
            @user = User.find(current_user.id)
        else

        end
    end

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

    def search
        @q = Item.ransack(params[:q])
        @items = @q.result.includes(:artist,:label,:genre,:property,:musics)
    end

    def search_params
        params.require(:q).permit(:name_cont)
    end
end