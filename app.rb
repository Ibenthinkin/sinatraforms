class Application < Sinatra::Base

  get '/jellybeans' do
      @jellybeans = Jellybean.all
      erb :list_jellybeans
  end

  get '/form' do
      erb :form
  end

  post '/new' do 
      params.to_s
      Jellybean.create(label: params[:label], flavor: params[:flavor], popularity: params[:popularity])
  end
end