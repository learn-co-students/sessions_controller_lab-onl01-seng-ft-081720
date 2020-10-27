class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] == "" || !params[:name]
            redirect_to controller: 'sessions', action: 'new'
        else 
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
           
        end
    end

    def destroy
        session.delete :name
       
    end
end
