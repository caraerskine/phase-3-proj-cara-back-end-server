class PaintingsController < ApplicationController
 
  get '/paintings' do
    paintings = Painting.all
    paintings.to_json(include: :artist)
  end

  post '/paintings' do
    artist = Artist.find_by(id: params[:artist_id])
    painting = artist.paintings.create(params)
    painting.to_json
  end

  delete '/paintings/:id' do 
    painting = Painting.find_by(id: params[:id])
    painting.destroy
  end

  patch '/paintings/:id' do
    painting = Painting.find_by(id: params[:id])
    painting.update(like: params[:like])
    painting.to_json
  end  

end

