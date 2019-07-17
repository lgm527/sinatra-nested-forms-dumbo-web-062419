require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      Pirate.new(params[:pirate])

      @pirate = Pirate.all[0]

      params[:pirate][:ships].each do |data|
        Ship.new(data)
      end

      @ships = Ship.all
# binding.pry
      erb :'pirates/show'
    end

    # get '/pirates'

  end
end
