class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def idex
  end
end
