class SessionsController < ApplicationController
 
  def new
  end
  
  def create
   
    if params[:name] != nil  
     session[:name] = params[:name] 
    end 
    if session[:name].nil? || params[:name] == ""
      redirect_to login_path
    else 
      redirect_to  root_path
    end 
    
  end
  
  def destroy
    if session[:name]
    session.delete :name
  end 
end
end
