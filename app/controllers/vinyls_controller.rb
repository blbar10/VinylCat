class VinylsController < ApplicationController

  def index

    @vinyls = nil
    @vinyls = Vinyl.where(genre: params[:genre]) if params[:genre].present?
    if params[:q].present?
      q = params[:q]
      @vinyls = Vinyl.where('artist LIKE ? OR album LIKE ? OR year LIKE ?',
                             "%#{q}%", "%#{q}%", "%#{q}%")
    end

    @vinyls = Vinyl.all if @vinyls.nil?

    @genres = Vinyl.pluck(:genre).uniq
  end

  def show
    @vinyl = Vinyl.find(params[:id])
  end

  def new
    @vinyl = Vinyl.new
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)

    if @vinyl.save
      redirect_to vinyl_path(@vinyl)

    else
      render 'new'
    end
  end

  def edit
    @vinyl = Vinyl.find(params[:id])
  end

  def update
    @vinyl = Vinyl.find(params[:id])
    @vinyl = nil

    if @vinyl.update(vinyl_params)
      redirect_to vinyl_path(@vinyl.vinyl_id)

    else
      render 'edit'
    end
  end

    def vinyl_params
      params.require(:vinyl)
            .permit(:artist, :album, :year, :condition, :genre, :own)
    end


end
