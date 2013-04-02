require_relative 'test_helper'
require "ostruct"

#describe WamekuClient::Common do

  #before :each do
    #WamekuClient::Connection.stubs(:new).with(host: '127.0.0.1', port: 1337).returns(OpenStruct.new(connection: true))
    #@client = WamekuClient::Connection.new(host: '127.0.0.1', port: 1337)
  #end
  #it "should get remote plugins loaded" do
    #@client.expects(:plugins).returns([:status, :uptime])
    #assert_equal @client.plugins, [:status, :uptime]
  #end

  #it "should run remote plugins" do
    #@client.expects(:run_me).returns({:host_name=>"phoenix", :host_ip_addr=>["127.0.1.1"]})
    #assert_equal @client.run_me, {:host_name=>"phoenix", :host_ip_addr=>["127.0.1.1"]}
  #end

  #it "should contain the hostname and ip address of remote host" do
    #@client.expects(:run_me).returns({:host_name=>"phoenix", :host_ip_addr=>["127.0.1.1"]})
    #result = @client.run_me
    #assert result.has_key? :host_name
    #assert result.has_key? :host_ip_addr
  #end

#end
 
