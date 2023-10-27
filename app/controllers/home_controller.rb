class HomeController < ApplicationController
  def index
    @filtered_users = filter_users(params[:search])
  end
end
