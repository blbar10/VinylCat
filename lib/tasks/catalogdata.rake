namespace :data do

  task :catalog => :environment do

    UserVinyl.delete_all
    User.delete_all
    Vinyl.delete_all


    #User
    brett =  User.create(name: "brett", email: "brett@example.com", password: "password")

    # vinyl
    highway_to_hell = Vinyl.create(artist: "AC/DC", album: "Highway to Hell",
      year: "1978", genre: "Rock")

    construction = Vinyl.create(artist: "Chicao Buraque", album: "Construction",
      year: "1970", genre: "Brazilian")

    cars = Vinyl.create(artist: "Gary Numan", album: "Cars", year: "1980", genre: "80's")
    rumors = Vinyl.create(artist: "Fleetwood Mac", album: "Rumors",
      year: "1978", genre: "Rock")
    seasons = Vinyl.create(artist: "Vivaldi", album: "Seasons", year: "2004", genre: "classical")

    #user_vinyl
    UserVinyl.create(user: brett, vinyl: highway_to_hell, condition: "good", status: "owned")
    UserVinyl.create(user: brett, vinyl: construction, condition: "very good+", status: "owned")
    UserVinyl.create(user: brett, vinyl: cars, condition: "fair", status: "wanted")
    UserVinyl.create(user: brett, vinyl: rumors, condition: nil, status: "wanted")
    UserVinyl.create(user: brett, vinyl: seasons, condition: nil, status: "wanted")

  end
end
