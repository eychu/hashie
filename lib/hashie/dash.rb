module Hashie

  class Dash < Hash

    def initialize(*args)
      @methods = {}
      @properties = Hash[*args]
      #p @properties
    end

    def respond_to_missing?()
      true
    end

    def self.property(name, options = {})
      p options
      p name
      define_method name do
        @properties[name]
      end
      define_method "#{name}=" do

      end
    end


  end
end