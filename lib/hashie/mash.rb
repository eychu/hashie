module Hashie
  class Mash < Hash

    def initialize
      @methods = {}
    end

    def respond_to_missing?()
      true
    end

    def method_missing (meth, *args, &block)
      name = meth.to_s
      case name[-1]
        when '='
          return @methods[name.chop] = args[0]
        when '?'
          return !@methods[name.chop].nil?
      end

      if @methods[name]
        define_singleton_method name.to_sym do
          @methods[name]
        end
        send name
      end

    end

  end
end