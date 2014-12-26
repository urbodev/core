class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!
  before_filter :verify_access!
  layout "admin"

  protected

  def verify_access!
    authorized_users = User.with_any_role :admin, :manager
    unless authorized_users.include? current_user
      render status: 500
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json { render json: { error: "You don't have access!" }, status: 403 }
      end
    end
  end
end