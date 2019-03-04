require 'sinatra'
require 'erb'

get '/' do
	unless params[:nombre]
		ERB.new("<h1>Hola desconocido!</h1>").result(binding)
	else
		if params[:nombre] == ""
			ERB.new("<h1>Hola desconocido!</h1>").result(binding)
		else
			ERB.new("<h1>Hola <%= params[:nombre] %>!</h1>").result(binding)
		end
	end	      
end
