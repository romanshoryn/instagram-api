module Instagram
  Dir[File.expand_path('../models/*.rb', __FILE__)].each{ |f| require f }

  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{ |f| require f }

    include Instagram::Client::Posts
    include Instagram::Client::Tags
    include Instagram::Client::Users
  end
end
