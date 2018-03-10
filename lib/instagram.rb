require File.expand_path('../instagram/configuration', __FILE__)
require File.expand_path('../instagram/api', __FILE__)
require File.expand_path('../instagram/client', __FILE__)

module Instagram
  extend Configuration

  def self.client(options={})
    Instagram::Client.new(options)
  end

  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end
