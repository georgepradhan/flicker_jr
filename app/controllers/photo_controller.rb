get '/photo/:id' do
  photo = Photo.find(params[:id])
  @path = photo.file
  erb :photo_show
end
