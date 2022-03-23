class HomesController < ApplicationController
  # GET /homes
  def index
    respond_to do |format|
      format.html { redirect_to groups_path, notice: 'Logged in successfully' } if user_signed_in?
    end
  end
end
