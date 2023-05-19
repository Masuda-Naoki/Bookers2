class UsersController < ApplicationController
  def new
  end

  def index
    @user = User.all
  end

  def show
    
  end

  def update
  end
end
