class UsersController < ApplicationController

    def show
	@user = User.find( params[:id] )
	@title = @user.name
    end #show

    def new
	@user = User.new
	@title = "Sign up"
    end #new
    
    def create
	  @user = User.new( params[:user] )
	  if @user.save
	      sign_in @user
	      flash[:success] = "Welcome to the Sample App!"
		  redirect_to @user
	  else
		  @title = "Sign up"
		  @user.password = ""
		  render 'new'
	  end
    end #create

end
