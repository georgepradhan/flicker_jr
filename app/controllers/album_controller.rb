get '/albums' do
  @user = current_user
  erb :albums
end

get '/albums/:id' do
  @album = current_user.albums.find(params[:id])
  erb :album
end

post '/albums/:id' do
  # photo is stubbed out - will be more like
  # photo = current_user.albums.find(params[:id]).photos.new()
  photo = Photo.new()
  photo.file = params[:image]
  photo.save
  redirect "/photo/#{photo.id}"
end
