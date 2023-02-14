class ArtistsController < ApplicationController


  get '/artists/:id/paintings' do
    paintings = Artist.find_by(id: params[:id])
    paintings.to_json(include: :paintings)
  end

  get '/artists' do
    artists = Artist.all
    artists.to_json(include: :paintings)
  end

  post '/artists' do
    artists = Artist.create(params)
    artists.to_json
  end

end







 
 

