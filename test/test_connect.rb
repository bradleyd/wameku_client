require_relative 'test_helper'

describe WamekuClient::Connection do
  
  it "should raise error if `:host` is not given" do
    assert_raises KeyError do
      WamekuClient::Connection.new
    end
  end

  describe "connection properties" do
    before :each do
      @client = WamekuClient::Connection.new(host: '127.0.0.1', port: 1337)  
    end
    it "should respond to connected?" do
      assert_respond_to @client, :connected?
    end

    it "should return a connectin object" do
      WamekuClient::Connection.stubs(:new).with(host: '127.0.0.1', port: 1337).returns("foo")
      @client = WamekuClient::Connection.new(host: '127.0.0.1', port: 1337)
      assert_equal @client, "foo"
    end
  end
end


