class HomesController < ApplicationController
  # GET /homes
  def index
    respond_to do |format|
      if user_signed_in?
        format.html { redirect_to groups_path, notice: 'Logged in successfully' }
      end
    end
  end
end
