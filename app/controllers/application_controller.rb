class ApplicationController < ActionController::Base
  helper_method :filter_users

  def filter_users(search_term)
    if search_term.present?
      User.where("name LIKE ?", "%#{search_term}%")
    else
      User.all
    end
  end
end
