class SessionsController < ApplicationController
	def new 
		if params[:id] == nil
			@session = Session.new
		else
			@session = Session.new.find(params[:id])
	end

	def index
		@sessions = Session.all
	end

	def create
		@session = Session.new params.require(:session).permit(:client, :data, :imagem, :tamanho)
		@session.save
		redirect_to sessions_path
	end
end

