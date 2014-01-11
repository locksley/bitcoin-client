class Bitcoind::API
  attr_reader :options
  attr_reader :params

  def initialize(options = {})
    @options = {
      host: 'localhost',
      port: 18332,
      ssl:  false,
      user: "user",
      pass: "pass"
    }.merge(options)
  end

  def to_hash
    @options.dup
  end

  def request(service_name, *params)
    req = Bitcoind::Request.new(service_name, params)
    Bitcoind::RPC.new(to_hash).dispatch(req)
  end
end
