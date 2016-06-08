require 'sinatra'

module Japan
  def plates
    @plates ||= []
  end

  class TectonicPlate
    attr_accessor :name, :size, :attitude

    def initialize(name, size, attitude: "shakey")
      @name = name
      @size = size
      @attidude = attitude
    end
  end

  get '/plates' do |variable|
    return Japan.plates.to_json
  end
end

