class SessionsController < ApplicationController

  def new
    @title = "Sign in"
  end #new
  
  def create
    user = User.authenticate( params[:session][:email],
                              params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination!"
      @title = "Sign in"
      render 'new'
    else
      sign_in user
      redirect_to user
    end
  end #create
  
  def destroy
    sign_out
    redirect_to root_path
  end #destroy

end
