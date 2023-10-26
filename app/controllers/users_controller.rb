require 'net/http'
require 'json'

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new_random_user
    def create_random_user
      uri = URI('https://randomuser.me/api/')
      response = Net::HTTP.get(uri)
      user_data = JSON.parse(response)

      user = user_data['results'][0]

      name = "#{user['name']['first']} #{user['name']['last']}"
      email = user['email']
      bio = user['dob']['age'].to_s + ' years old'
      image_url = user['picture']['large']

      @user = User.new(name: name, email: email, bio: bio, image_url: image_url)

      if @user.save
        redirect_to users_path
      else
        render layout: false
      end
    end
  end
end
