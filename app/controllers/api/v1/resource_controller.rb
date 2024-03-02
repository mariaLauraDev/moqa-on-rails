module Api
  module V1
    class ResourceController < BaseController
      before_action :authenticate_user!
      load_and_authorize_resource

      # TODO: include cache
    end
  end
end