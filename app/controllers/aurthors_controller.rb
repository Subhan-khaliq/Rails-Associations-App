# frozen_string_literal: true

class AurthorsController < ApplicationController
  before_action :find_aurthor, only: %i[show edit update destroy]

  def index
    @aurthors = Aurthor.all
  end

  def show
    @commentable = @aurthor
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def new
    @aurthor = Aurthor.new
  end

  def create
    @aurthor = Aurthor.create(aurthor_params)

    redirect_to aurthor_path(@aurthor)
  end

  def edit; end

  def update
    @aurthor.update(aurthor_params)

    redirect_to aurthor_path(@aurthor)
  end

  def destroy
    @aurthor.destroy

    redirect_to aurthors_path
  end

  private

  def aurthor_params
    params.require(:aurthor).permit(:name, :age)
  end

  def find_aurthor
    @aurthor = Aurthor.find(params[:id])
  end
end
