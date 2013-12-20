require 'active_record'
require_relative 'config'
require "sinatra/activerecord/rake"
# Require models
require_relative 'models/astronaut'
require_relative 'models/moon'
require_relative 'models/planet'
require_relative 'models/voyage'

@planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
@moons = {"Earth" => "Earth's Moon",
         "Mars" => "Phobos",
         "Mars" => "Deimos",
         "Jupiter" => "Io",
         "Jupiter" => "Europa",
         "Jupiter" => "Ganymede",
         "Jupiter" => "Callisto",
         "Jupiter" => "Amalthea",
         "Jupiter" => "Himalia",
         "Jupiter" => "Elara",
         "Jupiter" => "Pasiphae",
         "Jupiter" => "Sinope",
         "Jupiter" => "Lysithea",
         "Jupiter" => "Carme",
         "Jupiter" => "Ananke",
         "Jupiter" => "Leda",
         "Jupiter" => "Thebe",
         "Jupiter" => "Adrastea",
         "Jupiter" => "Metis",
         "Jupiter" => "Callirrhoe",
         "Jupiter" => "Themisto",
         "Jupiter" => "Megaclite",
         "Jupiter" => "Taygete",
         "Jupiter" => "Chaldene",
         "Jupiter" => "Harpalyke",
         "Jupiter" => "Kalyke",
         "Jupiter" => "Iocaste",
         "Jupiter" => "Erinome",
         "Jupiter" => "Isonoe",
         "Jupiter" => "Praxidike",
         "Jupiter" => "Autonoe",
         "Jupiter" => "Thyone",
         "Jupiter" => "Hermippe",
         "Jupiter" => "Aitne",
         "Jupiter" => "Eurydome",
         "Jupiter" => "Euanthe",
         "Jupiter" => "Euporie",
         "Jupiter" => "Orthosie",
         "Jupiter" => "Sponde",
         "Jupiter" => "Kale",
         "Jupiter" => "Pasithee",
         "Jupiter" => "Hegemone",
         "Jupiter" => "Mneme",
         "Jupiter" => "Aoede",
         "Jupiter" => "Thelxinoe",
         "Jupiter" => "Arche",
         "Jupiter" => "Kallichore",
         "Jupiter" => "Helike",
         "Jupiter" => "Carpo",
         "Jupiter" => "Eukelade",
         "Jupiter" => "Cyllene",
         "Jupiter" => "Kore",
         "Jupiter" => "Herse",
         "Saturn" => "Mimas",
         "Saturn" => "Enceladus",
         "Saturn" => "Tethys",
         "Saturn" => "Dione",
         "Saturn" => "Rhea",
         "Saturn" => "Titan",
         "Saturn" => "Hyperion",
         "Saturn" => "Iapetus",
         "Saturn" => "Erriapus",
         "Saturn" => "Phoebe",
         "Saturn" => "Janus",
         "Saturn" => "Epimetheus",
         "Saturn" => "Helene",
         "Saturn" => "Telesto",
         "Saturn" => "Calypso",
         "Saturn" => "Kiviuq",
         "Saturn" => "Atlas",
         "Saturn" => "Prometheus",
         "Saturn" => "Pandora",
         "Saturn" => "Pan",
         "Saturn" => "Ymir",
         "Saturn" => "Paaliaq",
         "Saturn" => "Tarvos",
         "Saturn" => "Ijiraq",
         "Saturn" => "Suttungr",
         "Saturn" => "Mundilfari",
         "Saturn" => "Albiorix",
         "Saturn" => "Skathi",
         "Saturn" => "Siarnaq",
         "Saturn" => "Thrymr",
         "Saturn" => "Narvi",
         "Saturn" => "Methone",
         "Saturn" => "Pallene",
         "Saturn" => "Polydeuces",
         "Saturn" => "Daphnis",
         "Saturn" => "Aegir",
         "Saturn" => "Bebhionn",
         "Saturn" => "Bergelmir",
         "Saturn" => "Bestla",
         "Saturn" => "Farbauti",
         "Saturn" => "Fenrir",
         "Saturn" => "Fornjot",
         "Saturn" => "Hati",
         "Saturn" => "Hyrrokkin",
         "Saturn" => "Kari",
         "Saturn" => "Loge",
         "Saturn" => "Skoll",
         "Saturn" => "Surtur",
         "Saturn" => "Greip",
         "Saturn" => "Jarnsaxa",
         "Saturn" => "Tarqeq",
         "Saturn" => "Anthe",
         "Saturn" => "Aegaeon",
         "Uranus" => "Cordelia",
         "Uranus" => "Ophelia",
         "Uranus" => "Bianca",
         "Uranus" => "Cressida",
         "Uranus" => "Desdemona",
         "Uranus" => "Juliet",
         "Uranus" => "Portia",
         "Uranus" => "Rosalind",
         "Uranus" => "Mab",
         "Uranus" => "Belinda",
         "Uranus" => "Perdita",
         "Uranus" => "Puck",
         "Uranus" => "Cupid",
         "Uranus" => "Miranda",
         "Uranus" => "Francisco",
         "Uranus" => "Ariel",
         "Uranus" => "Umbriel",
         "Uranus" => "Titania",
         "Uranus" => "Oberon",
         "Uranus" => "Caliban",
         "Uranus" => "Stephano",
         "Uranus" => "Trinculo",
         "Uranus" => "Sycorax",
         "Uranus" => "Margaret",
         "Uranus" => "Prospero",
         "Uranus" => "Setebos",
         "Uranus" => "Ferdinand",
         "Neptune" => "Triton",
         "Neptune" => "Nereid",
         "Neptune" => "Naiad",
         "Neptune" => "Thalassa",
         "Neptune" => "Despina",
         "Neptune" => "Galatea",
         "Neptune" => "Larissa",
         "Neptune" => "Proteus",
         "Neptune" => "Halimede",
         "Neptune" => "Psamathe",
         "Neptune" => "Sao",
         "Neptune" => "Laomedeia",
         "Neptune" => "Neso",
}

namespace :db do
  desc "Seed Empty nasa_missions Database"
  task :seed do
    # Add astronauts
    astronaut1 = Astronaut.create(:first_name => "Buzz", :last_name => "Aldrin", :date_of_birth => "1930-01-20", :rank => "Colonel", :specialty => "Fighter pilot" )
      puts "Created #{astronaut1.first_name}"
    astronaut2 = Astronaut.create(:first_name => "Joseph", :last_name => "Allen", :date_of_birth => "1937-06-27", :rank => "PhD", :specialty => "Physicist" )
      puts "Created #{astronaut2.first_name}"
    astronaut3 = Astronaut.create(:first_name => "Will", :last_name => "Anders", :date_of_birth => "1933-10-17", :rank => "Major General", :specialty => "Fighter pilot" )
      puts "Created #{astronaut3.first_name}"
    astronaut4 = Astronaut.create(:first_name => "Alan", :last_name => "Bean", :date_of_birth => "1932-03-15", :rank => "Captain", :specialty => "Test pilot" )
      puts "Created #{astronaut4.first_name}"
    astronaut5 = Astronaut.create(:first_name => "John", :last_name => "Blaha", :date_of_birth => "1942-08-26", :rank => "Colonel", :specialty => "Fighter pilot" )
      puts "Created #{astronaut5.first_name}"
    # Add planets
    @planets.each do |planet|
      large_blob = Planet.create(:name => planet)
      puts "Created #{large_blob.name}"
    end
    
    # Add moons
    @moons.each do |planet, moon|
      small_blob = Moon.create(:name => moon, :planet_id => Planet.find_by_name(planet))
      puts "Created #{small_blob.name}, a moon of #{planet}"
    end
  end
end