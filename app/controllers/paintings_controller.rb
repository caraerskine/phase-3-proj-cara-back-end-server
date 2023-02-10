class PaintingsController < ApplicationController
 
#READ
#get all the dang paintings
 get '/paintings' do
    # pry
    paintings = Painting.all
    paintings.to_json(include: :artist)
  end

#  this is the add from the Painting Form from the "add a painting" button on the artists card
# CREATE
post '/paintings' do
    painting = Painting.create(params)
    painting.to_json
  end

  #DELETE
#This is the REMOVE trash can icon on painting card so you can delete that specific painting
  delete '/paintings/:id' do 
    painting = Painting.find_by(id: params[:id])
    painting.destroy
  end

  #UPDATE
 #update the painting with the LIKER button on painting card
  patch '/paintings/:id' do
    painting = Painting.find_by(id: params[:id])
    painting.update(like: params[:like])
    painting.to_json
  end  

end

