class SessionsController < ApplicationController
	def new 
		@session = Session.new
	end

	def index
		@session = Session.new.all
	end

	def create
		@session = Session.new params.require(:session).permit(:client)
		@session.save
		redirect_to new_session_path
	end
end

