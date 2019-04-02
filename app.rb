class Application < Sinatra::Base
  use Rack::MethodOverride
  # set :method_override, true

  # index - show a list of all resources
  get '/jellybeans' do
    @jellybeans = Jellybean.all
    erb :index
  end

  # new - show a form to create a new resource
  get '/jellybeans/new' do
    erb :new
  end

  # edit - display the form to edit the resource
  get '/jellybeans/:id/edit' do
    @jellybean = Jellybean.find(params["id"])
    erb :edit # new form prepoluted with the data
  end

  # show - show a detailed view of one resources
  get '/jellybeans/:id' do
    @jellybean = Jellybean.find(params["id"])
    erb :show
  end

  # create - deal with new form
  post '/jellybeans' do
    @jellybean = Jellybean.create(params)

    redirect "/jellybeans/#{@jellybean.id}"
  end

  # update - deal with the updating of the resource
  patch '/jellybeans/:id' do
    jellybean = Jellybean.find(params["id"])
    jellybean.update(params["jellybean"])

    redirect "/jellybeans/#{jellybean.id}"
  end

  # destroy
  delete '/jellybeans/:id' do
    jellybean = Jellybean.find(params["id"])
    jellybean.delete

    redirect "/jellybeans"
  end

end
