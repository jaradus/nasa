configure :development do

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "ethanschmertzler1",
    database: "nasa_missions",
    encoding: "utf8",
  )
end