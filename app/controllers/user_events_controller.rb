class UserEventsController < ApplicationController
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  attr_accessor
  def create
    @user_event = UserEvent.new(user_event_params)
    respond_to do |format|
      if @user_event.save!
        format.html {redirect_to :root, notice: 'It Vorks'}
      else
        format.html {redirect_to :root, notice: 'Coglione'}
      end
    end
  end

  def destroy
    @user_event.destroy
  end

  private

  def user_event_params
    params.permit(:user_id, :event_id)
  end
end