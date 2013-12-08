# config/initializers/geocoder.rb
Geocoder.configure(
  :lookup => :google,
  :timeout => 30,
  :units => :km,
  :cache => Redis.new,
  :cache_prefix => "something"
)