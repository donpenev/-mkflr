class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tocontact = Tocontact.new
  end
end
