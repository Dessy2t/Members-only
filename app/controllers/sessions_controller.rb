class SessionsController < ApplicationController
   
    def new
   
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            flash[:success] = 'Thank you for signing in!'
            sign_in user
            redirect_to root_path        
        else
            flash.now[:error] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def destroy
        sign_out
        redrect_to_path
    end

end
