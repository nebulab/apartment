require 'apartment/adapters/abstract_adapter'

module Apartment
  module Database

    def self.mysql2_adapter(config)
      Adapters::Mysql2Adapter.new(config)
    end
  end

  module Adapters
    class Mysql2Adapter < AbstractAdapter

      def initialize(config)
        super

        @default_tenant = config[:database]
      end

    protected

      def rescue_from
        Mysql2::Error
      end
    end
  end
end
