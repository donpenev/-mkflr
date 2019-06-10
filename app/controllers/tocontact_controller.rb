class TocontactController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @tocontact = Tocontact.create(tocontact_params)
    # redirect to home page, maybe present a modal
    redirect_to :root
  end

  private

  def tocontact_params
    params.require(:tocontact).permit(:email)
  end
end
