require 'spec_helper'

describe SessionsController do
	it 'saves a session' do
		post :create, params:{session: {client: 'bilso, o próprio', data: '2016-07-31 15:12:04', imagem:'imagem', tamanho: '30'}}
		expect(Session.all.size).to eq 1
	end

	it 'edit a session' do
		
	end
end

