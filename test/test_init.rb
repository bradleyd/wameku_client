require_relative 'test_helper'
require "ostruct"

describe WamekuClient::Init do

  before :each do
    @foo = WamekuClient::Init.new
  end

  it "should respond to #plugins" do
    @bar = @foo.connect_to(host: '127.0.0.1', port: 1337)
    assert_respond_to @bar, :plugins
  end
 
  it "should respond to #run_me" do
    @bar = @foo.connect_to(host: '127.0.0.1', port: 1337)
    assert_respond_to @bar, :run_me
  end

  it "should return host_name" do
    @foo.expects(:connect_to).with(host: '127.0.0.1', port: 1337).returns(Object.new)
    @bar = @foo.connect_to(host: '127.0.0.1', port: 1337)
    @bar.expects(:run_me).returns({:host_name=>"phoenix", :host_ip_addr=>["127.0.1.1"]})
    assert @bar.run_me[:host_name]
  end

end
