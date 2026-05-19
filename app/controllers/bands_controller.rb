class BandsController < ApplicationController
  before_action :set_band, only: %i[ show edit update destroy ]

  def index
    self.bands = Band.all
  end

  def show
  end

  def new
    self.band = Band.new
  end

  def edit
  end

  def create
    self.band = Band.new(band_params)

    if band.save
      redirect_to band, notice: "Band was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if band.update(band_params)
      redirect_to band, notice: "Band was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    band.destroy!

    redirect_to bands_path, notice: "Band was successfully destroyed.", status: :see_other
  end

  private

  attr_accessor :band,
                :bands

  def set_band
    self.band = Band.find(params.expect(:id))
  end

  def band_params
    params.require(:band).permit(:name, :genre, musician_ids: [] )
  end
end
