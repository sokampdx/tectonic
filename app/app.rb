require 'sinatra'

module Japan
  def plates
    @plates ||= []
    "Hello Plate"
  end

  class TectonicPlate
    attr_accessor :name, :size, :attitude

    def initialize(name, size, attitude = "shakey")
      @name = name
      @size = size
      @attitude = attitude
    end
  end
end

get '/' do
  "Up there in the URL, add the text '/plates' at the end."
end

get '/plates' do
  "Up there in the URL, add a slash and then any word or numbers..."
end

get '/plates/:name' do
  plate = Japan::TectonicPlate.new(params['name'], "The size")
  "#{plate.name} is #{plate.attitude}"
end
