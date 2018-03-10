class HomeController < ApplicationController
  def index
    p 'path = ' + ENV['GOOGLE_APP_ID']
  end
end
