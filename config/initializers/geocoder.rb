if Rails.env == 'production' # (on Heroku)
  uri = URI.parse(ENV["REDISTOGO_URL"])
  REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  REDIS = Redis.new
end

# config/initializers/geocoder.rb
Geocoder.configure(
  :lookup => :google,
  :timeout => 30,
  :units => :km,
  :cache => REDIS,
  :cache_prefix => "something"
)