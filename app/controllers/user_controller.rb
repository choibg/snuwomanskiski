class UserController < ApplicationController
	def index
	end
	def login
	end
	def login_process
		member=Member.find_by_userid(params[:userid])
			if member.nil?
				redirect_to :controller =>'main', :action =>'index'
			elsif member.passwd==params[:passwd]
				session[:member]=member
				redirect_to :controller =>'user', :action =>'index'
			else 
				redirect_to :controller =>'main', :action =>'index'
			end

	end
	def logout
		reset_session 
		redirect_to :controller =>'main', :action =>'index'
	end 
	def join
	end
	def join_process
		member=Member.new 
		member.userid=params[:userid]
		member.passwd=params[:passwd]
		member.realname=params[:realname]
		member.phone_number=params[:phone_number]
		member.year=params[:year]
		member.age=params[:age]
		member.save

		redirect_to :controller =>'main', :action =>'index'
	end 
end
