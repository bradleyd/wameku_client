require "drb"

module WamekuClient
  class Connection
    attr_reader :connection
    def initialize(opts={})
      @host = opts.fetch(:host) 
      @port = opts.fetch(:port) { 1337 }
      @connection = drb_connect 
    end

   def connected?
      @connection
    end

    private
    def drb_connect
      DRbObject.new(nil, "druby://#{@host}:#{@port}")
    end
 
  end
end
