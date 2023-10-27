class ApplicationController < ActionController::Base
    helper_method :get_all_users

    def get_all_users
        @all_users ||= User.all 
    end
end
