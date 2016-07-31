class SessionsController < ApplicationController
	def new 
		@session = Session.new
	end

	def index
		@sessions = Session.all
	end

	def edit
		@session = Session.find(params[:id])
	end

	def create
		@session = Session.new params.require(:session).permit(:client, :data, :imagem, :tamanho)
		@session.save
		redirect_to sessions_path
	end

	def update
		@session = Session.find(params[:id])
		@session.update(params.require(:session).permit(:client, :data, :imagem, :tamanho))
		redirect_to sessions_path
	end
end

