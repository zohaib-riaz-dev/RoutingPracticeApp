class AdsController < ApplicationController
  before_action :find_magazine

  def index
    @ads = @magazine.ads
  end

  def new
  end

  def create
  end

  def show
    @ad = @magazine.ads.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_magazine
    @magazine = Magazine.find(params[:magazine_id])
  end

  def ad_params
    params.require(:ad).permit(:title, :content)
  end
end
