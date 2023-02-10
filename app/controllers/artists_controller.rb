class ArtistsController < ApplicationController

#this is to get the individual artists paintings to show up when user clicks "see all paintings by this artist" button
  
get '/artists/:id/paintings' do
    paintings = Artist.find_by(id: params[:id])
    paintings.to_json(include: :paintings)
  end

#gets all the artists
  get '/artists' do
    artists = Artist.all
    artists.to_json(include: :paintings)
  end

  #i think i need a CREATE
  #could do an artist form?

end








 
 

