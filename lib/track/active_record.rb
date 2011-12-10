require 'active_record'

module Track
  module ActiveRecord
    
    @@config = nil
    @@booted = false
    
    class << self
      
      def boot!
        unless @booted
          @@config = Track.load_config_file!('database')
          connect!
          @@booted = true
        end
      end
      
      def [](key)
        @@config[key.to_s]
      end
      
      def connected?
        ::ActiveRecord::Base.connected?
      end
      
      def connect!
        unless connected?
          ::ActiveRecord::Base.establish_connection(@@config)
          ::ActiveRecord::Base.connection # why isnt AR connected before this?
        end
      end
    
    end
    
  end
end
