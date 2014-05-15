class UserVinylsController < ApplicationController
  def index
    @owned = UserVinyl.includes(:vinyl).where(status: "own")
    @wanted = UserVinyl.includes(:vinyl).where(status: "want")
  end


  def create


    vinyl_id = params[:vinyl_id]
    status   = params[:status]

    user_vinyl = UserVinyl.find_or_create_by(user_id: current_user.id, vinyl_id: vinyl_id)

    if user_vinyl.status != status
      user_vinyl.update(status: status)
    end

    redirect_to :back
  end


end
