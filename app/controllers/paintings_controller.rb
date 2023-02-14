class PaintingsController < ApplicationController
 
#READ
#get all the paintings
 get '/paintings' do
    # pry
    paintings = Painting.all
    paintings.to_json(include: :artist)
  end

# CREATE
# add painting
post '/paintings' do
    # binding.pry
    painting = Painting.create(params)
    painting.to_json
  end

#DELETE
#delete specific painting
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

