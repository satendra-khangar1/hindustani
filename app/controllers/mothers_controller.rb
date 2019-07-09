class MothersController < ApplicationController
  def show
  	@user = User.find(params[:user_id])
    @mother = @user.mother
  end
end