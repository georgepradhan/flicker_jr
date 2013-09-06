get '/' do
  redirect '/albums' if logged_in?
  redirect '/login'
end

post '/whatever' do
  Photo.create(filename: params[:filename])
  redirect '/'
end

get '/photo/:id' do
  photo = Photo.find(params[:id])
  @path = photo.file

  erb :photo_show

end
