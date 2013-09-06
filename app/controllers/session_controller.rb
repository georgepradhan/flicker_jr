# stuff for sessions (logging in)

get '/' do
  redirect '/albums' if logged_in?
  redirect '/login'
end

post '/login' do
  login
end

get '/logout' do
  logout
end
