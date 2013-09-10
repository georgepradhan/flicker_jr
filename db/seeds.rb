chae = User.create(username: "chae", password: "password")

chae.albums << Album.create(title: 'France')
chae.albums << Album.create(title: 'London')
