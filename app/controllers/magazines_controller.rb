class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.find(params[:id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
  end
end
