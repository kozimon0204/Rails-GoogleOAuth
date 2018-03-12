class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    p 'path = ' + ENV['GOOGLE_APP_ID']
  end
end
