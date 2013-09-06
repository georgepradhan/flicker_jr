get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/whatever' do
  Photo.create(filename: params[:filename])
  redirect '/'
end

post '/albums/:id' do
  # photo is stubbed out - will be more like 
  # photo = current_user.albums.find(params[:id]).photos.new()
  photo = Photo.new()
  photo.file = params[:image]
  photo.save
end
