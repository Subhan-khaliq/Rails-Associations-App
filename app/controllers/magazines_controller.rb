# frozen_string_literal: true

class MagazinesController < ApplicationController
  before_action :find_magazine, only: %i[show edit update destroy]

  def index
    @magazines = Magazine.all
  end

  def show; end

  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.create(magazine_params)

    redirect_to magazine_path(@magazine)
  end

  def edit; end

  def update
    @magazine.update(magazine_params)

    redirect_to magazine_path(@magazine)
  end

  def destroy
    @magazine.destroy

    redirect_to magazines_path
  end

  private

  def magazine_params
    params.require(:magazine).permit(:title, :aurthor_id)
  end

  def find_magazine
    @magazine = Magazine.find(params[:id])
  end
end
