class HomeController < ApplicationController
  def index
    @faker_data = FakerDatum.all
  end
end
