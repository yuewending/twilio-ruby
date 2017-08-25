##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview
      class Sync < Version
        ##
        # Initialize the Sync version of Preview
        def initialize(domain)
          super
          @version = 'Sync'
          @services = nil
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Preview::Sync::ServiceInstance] if sid was passed.
        # @return [Twilio::REST::Preview::Sync::ServiceList]
        def services(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @services ||= ServiceList.new self
          else
            ServiceContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Preview::Sync>'
        end
      end
    end
  end
end