class ChildrenController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
    @children = @user.children
  end
end