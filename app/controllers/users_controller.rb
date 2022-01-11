class UsersController < ApplicationController

  def show
    user = get_user
    render json: user, include: :items
  end

  private

  def get_user
    User.find(params[:id])
  end

end
