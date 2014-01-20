class MainController < ApplicationController

	def index
		@users=User.all
	end 

	def login

	 	member = Member.find_by_userid(params[:id])
	 	if member.nil?
	 		redirect_to "/"
	 	else
	 		if member.passwd = params[:header_password]
	 			session[:member_id]=params[:header_userid]
	 		else
	 			redirect_to "/"
	 		end 
	 		redirect_to :controller =>'user', :action =>'index' 
	 	end

	end 


	def write_process
		user=User.new 
		user.userid=params[:userid]
		user.passwd=params[:password]
		user.realname=params[:realname]
		user.phone_number=params[:phone_number]
		user.year=params[:year]
		user.age=params[:age]
		user.email=params[:email]
		user.save

		redirect_to :controller=>'main', :action =>'index'
	end 


end
