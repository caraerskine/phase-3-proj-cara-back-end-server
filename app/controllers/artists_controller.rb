class ArtistsController < ApplicationController
 # index routes

 #Artists is Owners

#  get '/' do
#     "Hello let me see the art!"
#   end

#   get '/artists' do
#     "Hello World"
#   end

#this is to get the individual artists paintings (idea from mauricio)
get '/artists/:id/paintings' do
  paintings = Painting.find_by(:artist_id => params[:id])
  paintings.to_json(include: :artist)
end

#this is to get the individual artists paintings (idea from mauricio)
get '/artists/:id/paintings' do
  paintings = Painting.find_by(:artist_id => params[:id])
  paintings.to_json(include: :artist)
end


#aka owners
get '/artists' do
  artists = Artist.all
  artists.to_json(include: :paintings)
end

end




 




 
 
end
