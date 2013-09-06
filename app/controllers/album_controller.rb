get '/albums' do
  @user = current_user
  erb :albums
end

get '/albums/:id' do
  @album = current_user.albums.find(params[:id])
  @photos = @album.photos
  erb :album
end

post '/albums/:id/photos/new' do
  photo = current_user.albums.find(params[:id]).photos.new()
  photo.file = params[:image]
  photo.save
  redirect "/albums/#{params[:id]}/photo/#{photo.id}"
end

get '/albums/:album_id/photo/:photo_id' do
  @album = current_user.albums.find(params[:album_id])
  @photo = @album.photos.find(params[:photo_id])
  erb :photo_show
end
