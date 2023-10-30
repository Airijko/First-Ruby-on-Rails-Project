class UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
    @gender_name = Gender.find(@user.genders_id).name
    @country_name = Country.find(@user.country_id).name
  end

  def index
    @filtered_users = filter_users(params[:search]).page(params[:page]).per(20)
  end

  def filter_users(search_term)
    if search_term.present?
      User.where("name LIKE ?", "%#{search_term}%")
    else
      User.all
    end
  end
end
