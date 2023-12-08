class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.first
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
