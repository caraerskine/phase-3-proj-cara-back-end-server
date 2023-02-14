class ArtistsController < ApplicationController

#this is to get the individual artists paintings to show up when user clicks "see all paintings by this artist" button
  
#GET
#gets individual artists paintings
get '/artists/:id/paintings' do
    paintings = Artist.find_by(id: params[:id])
    paintings.to_json(include: :paintings)
  end

  #GET
#gets all the artists
  get '/artists' do
    artists = Artist.all
    artists.to_json(include: :paintings)
  end

  #CREATE
  #add artist
  post '/artists' do
    artists = Artist.create(params)
    artists.to_json
  end

end

#should above be
#'/artists/:id/artists/new'   idk





 
 

