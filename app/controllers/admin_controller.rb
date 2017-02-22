class AdminController < ApplicationController
	def login
		if request.post?
		     if params[:admin][:name] == "admin" && params[:admin][:password]=="123456"
			session[:admin]="admin"
			flash[:notice]="Admin Logged in"
			redirect_to :controller=>"books"
			else
				flash[:notice]="Invalid Username/Password. Please try again"
				render :action=>"login"
			end
		end
	end
def logout
	session[:admin]=nil
	flash[:notive]="You are logged out"
	render :action=>"login"
	end
end
