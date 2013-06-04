module Hashie

  class Dash < Hash

    def initialize(hash = {})
      @properties = hash

      self.class.requires.each do |k, v|
        unless @properties[k]
          raise ArgumentError
        end
      end

      self.class.defaults.each do |k, v|
        unless @properties[k]
          @properties[k] = v
        end
      end

    end

    def self.requires
      @requires
    end

    def self.defaults
      @defaults
    end

    def [] (args)
      @properties[args]
    end

    def self.property(name, options = {})
      p name
      p options

      if options[:required]
        @requires ||= {}
        @requires[name] = true
      end

      if options[:default]
        @defaults ||= {}
        @defaults[name] = options[:default]
      end

      define_method name do
        @properties[name]
      end

      define_method "#{name}=" do |value|
        @properties[name] = value
      end


    end


  end
end