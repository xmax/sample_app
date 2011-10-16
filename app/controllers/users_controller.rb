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
	    #
	else
	    @title = "Sign up"
	    render 'new'
	end
    end #create

end
