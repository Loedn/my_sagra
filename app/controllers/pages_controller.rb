class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.all
    # @user_event = UserEvent.new(user_event_params)
  end
end
