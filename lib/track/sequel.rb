require 'sequel'

module Track
  module Sequel
    
    @@config = nil
    @@db = nil
    
    class << self
      
      def boot!
        @@config = Track.load_config_file!('database')
        connect!
      end
      
      def [](key)
        @@config[key.to_s]
      end
      
      def db
        @@db
      end
      
      def connect!
        @@db = ::Sequel.connect @@config
        # @@db << "SET CLIENT_ENCODING TO 'UTF8';"
      end
    
    end
    
  end
end
