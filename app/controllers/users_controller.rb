class UsersController < ApplicationController
  def index
    @users = FakerDatum.all
  end
end
