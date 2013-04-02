# WamekuClient

Connects to remote hosts running `wameku_client_daemon`

## Installation

Add this line to your application's Gemfile:

    gem 'wameku_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wameku_client

## Usage

```ruby
 obj = WamekuClient::Init.new

 obj.connect_to(host: '127.0.0.1', port: 1337)

 obj.plugins #=> ["CpuPlugin", "HostPlugin"]

 obj.run_me  #=> [{:cpu_load=>[0.37, 0.36, 0.43], :stats=>{"cpu0"=>[25353, 79, 2398, 419342, 719, 15, 3493, 0, 0, 0], "cpu1"=>[22706, 37, 2415, 426848, 264, 0, 1010, 0, 0, 0], "cpu2"=>[20274, 53, 2486, 420216, 9247, 0, 66, 0, 0, 0], "cpu3"=>[22178, 49, 2456, 426794, 820, 0, 92, 0, 0, 0], "cpu4"=>[2020, 9, 516, 451406, 45, 0, 2, 0, 0, 0], "cpu5"=>[1588, 16, 393, 451628, 48, 0, 1, 0, 0, 0], "cpu6"=>[1801, 6, 474, 451566, 109, 0, 1, 0, 0, 0], "cpu7"=>[1807, 12, 485, 451628, 64, 0, 1, 0, 0, 0]}}, {:host_name=>"phoenix", :host_ip_addr=>["127.0.1.1"]}]

```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
