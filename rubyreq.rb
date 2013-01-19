require 'rubygems'
gem 'soundcloud-ruby-api-wrapper'
require 'soundcloud'

# Create an anonymous soundcloud client
# if you prefer to work with sandbox-soundcloud.com, replace this with:
# sc_client = Soundcloud.register({:consumer_key => 'Your_Consumer_Key_Here', :site => "http://api.sandbox-soundcloud.com"})
sc_client = Soundcloud.register

# Find the 10 hottest tracks
hot_tracks = sc_client.Track.find(:all,:params => {:order => 'hotness', :limit => 10})

# and display their titles
p '==the 10 hottest tracks=='
hot_tracks.each do |track|
  p track.title
end