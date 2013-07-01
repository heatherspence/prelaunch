
class PassthroughController < ApplicationController
  before_filter :authenticate_user!
  def index
     
    if current_user.roles.first.nil?
      path = user_path(current_user.id)
    elsif current_user.roles.first.name == "admin"
    path = '/users'
    else 
      path = '/users'
  
  end

    redirect_to path     
  end
end

