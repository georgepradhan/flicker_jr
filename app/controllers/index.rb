get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/whatever' do
  Photo.create(filename: params[:filename])
  redirect '/'
end
