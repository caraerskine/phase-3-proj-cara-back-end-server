class ArtistsController < ApplicationController
 # index routes

 #Artists is Owners

#  get '/' do
#     "Hello let me see the art!"
#   end

#   get '/artists' do
#     "Hello World"
#   end

# WHICH CONTROLLER SHOULD BE FULL CRUD

#this is to get the individual artists paintings to show up when user clicks "see all paintings by this artist" (idea from mauricio)
get '/artists/:id/paintings' do
  paintings = Artist.find_by(id: params[:id])
  paintings.to_json(include: :paintings)
end

#aka owners
get '/artists' do
  artists = Artist.all
  artists.to_json(include: :paintings)
end

end




 




 
 

