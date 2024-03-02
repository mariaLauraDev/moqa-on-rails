module Api
  module V1
    class BaseController < ApplicationController
      respond_to :json
      rescue_from CanCan::AccessDenied, with: :access_denied
      rescue_from ActionController::ParameterMissing, with: :error_during_processing
      rescue_from ArgumentError, with: :error_during_processing

      def error_during_processing(exception)
        render_error_payload(exception.message, 400)
      end

      def access_denied(exception)
        render_error_payload(exception.message, 403)
      end

      def render_error_payload(error, status = 422)
        json = if error.is_a?(ActiveModel::Errors)
                 { error: error.full_messages.to_sentence, errors: error.messages }
               elsif error.is_a?(Struct)
                 { error: error.to_s, errors: error.to_h }
               else
                 { error: }
               end

        render json:, status:, content_type:
      end
    end
  end
end