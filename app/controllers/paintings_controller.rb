class PaintingsController < ApplicationController
 
  # I THINK PAINTING CONTROLLER SHOULD BE FULL CRUD ???

#READ
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
  # aka dogs, delete does not return anything method delete
  # delete ':id/paintings' do 
  #   painting = Painting.find_by(id: params[:id])
  #   painting.destroy
  # end

  #UPDATE
 #update the painting with the LIKER button on painting card
 #or should it be 
#   patch '/paintings/:id' do
#     painting = Painting.find_by(id: params[:id])
#     painting.update(name: params[:name])
#     painting.to_json
#   end  

end




#other one, but we decided to put it with the artists too
#could be in either route just need full CRUD on one
#paintings
#maybe it should be a find_by and not a where here

# get '/paintings/:id' do
#   paintings = Painting.where(:artist_id => params[:id])
#   paintings.to_json(include: :artist)
# end