class FathersController < ApplicationController
  def show
  	@user = User.find(params[:user_id])
    @father = @user.father
  end
end