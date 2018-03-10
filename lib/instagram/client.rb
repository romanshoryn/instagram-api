module Instagram
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{ |f| require f }

    include Instagram::Client::Posts
    include Instagram::Client::Tags
    include Instagram::Client::Users
  end
end
