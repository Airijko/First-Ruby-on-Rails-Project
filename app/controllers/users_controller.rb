class UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
    @gender_name = Gender.find(@user.genders_id).name
    @country_name = Country.find(@user.country_id).name
  end
end