class MusiciansController < ApplicationController
  before_action :set_musician, only: %i[ show edit update destroy ]

  def index
    self.musicians = Musician.all
  end

  def show
  end

  def new
    self.musician = Musician.new
  end

  def edit
  end

  def create
    self.musician = Musician.new(musician_params)

    if musician.save
      redirect_to musician, notice: "Musician was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if musician.update(musician_params)
      redirect_to musician, notice: "Musician was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content 
    end
  end

  def destroy
    musician.destroy!

    redirect_to musicians_path, notice: "Musician was successfully destroyed.", status: :see_other
  end

  private

  attr_accessor :musician,
                :musicians

  def set_musician
    self.musician = Musician.find(params.expect(:id))
  end

  def musician_params
    params.expect(musician: [ :name ])
  end
end
