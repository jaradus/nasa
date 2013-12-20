configure :development do

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "ethanschmertzler1",
    database: "nasa_missions",
    encoding: "utf8",
  )
end

configure :production do
  # HEROKU CONFIG
  db = URI.parse(ENV['HEROKU_POSTGRESQL_YELLOW_URL '])
  #configuration info
  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host    => db.host,
      :username => db.user,
      :password => db.password,
      :database => db.path[1..-1],
      :encoding => 'utf8'
  )
end