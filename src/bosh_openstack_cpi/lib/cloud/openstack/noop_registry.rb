
module Bosh::OpenStackCloud
  class NoopRegistry
    include Helpers

    def initialize(registry_endpoint = nil, registry_user = nil, registry_password = nil)
    end

    def update_settings(instance_id, settings)
    end

    def read_settings(instance_id)
    end

    def delete_settings(instance_id)
    end

    def cloud_error(message)
    end
  end
end
