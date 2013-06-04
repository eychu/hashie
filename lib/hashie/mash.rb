module Hashie
  class Mash < Hash

    def initialize
      @methods = {}
    end

    def respond_to_missing?()

    end

    def method_missing (meth, *args, &block)
      #p meth
      name = meth.to_s
      last_char = name[name.length-1, name.length-1]
      p last_char
      if @methods[meth]
        define_singleton_method meth do
          @methods[meth]
        end
      end
    end

  end
end