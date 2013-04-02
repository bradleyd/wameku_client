require_relative 'test_helper'

describe WamekuClient do

  it "must be defined" do
    WamekuClient::VERSION.wont_be_nil
  end

end
