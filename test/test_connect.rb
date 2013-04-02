require_relative 'test_helper'
require "ostruct"

describe WamekuClient::Connection do
  
  it "should raise error if `:host` is not given" do
    assert_raises KeyError do
      WamekuClient::Connection.new
    end
  end

  describe "connection properties" do
    it "should return a connectin object" do
      WamekuClient::Connection.stubs(:new).with(host: '127.0.0.1', port: 1337).returns(OpenStruct.new(connection: true))
      @client = WamekuClient::Connection.new(host: '127.0.0.1', port: 1337)

      assert @client.connection
    end

    it "should respond to connected?" do
      @client = WamekuClient::Connection.new(host: '127.0.0.1', port: 1337)  
      assert_respond_to @client, :connected?
    end


  end
end
