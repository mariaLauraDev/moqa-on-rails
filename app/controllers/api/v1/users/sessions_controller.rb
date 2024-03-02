module Api
  module V1
    class Users::SessionsController < Devise::SessionsController
      respond_to :json

      # POST /resource/sign_in
      def create
        super do |resource|
          if request.format.json?
            # Acessa o token JWT gerado para a sessão atual
            token = current_token
            # Prepara os dados do usuário para a resposta
            user_data = {
              id: resource.id,
              email: resource.email,
              token: token
            }
            # Retorna os dados do usuário e o token como JSON
            render json: user_data, status: :ok and return
          end
        end
      end

      def failure
        render json: { error: I18n.t('devise.failure.unauthenticated') }, status: :unauthorized
      end

      # Método chamado após o logout
      def respond_to_on_destroy
        head :no_content
      end

      private

      # Extrai o token JWT da variável de ambiente, disponibilizado pelo devise-jwt
      def current_token
        request.env['warden-jwt_auth.token']
      end
    end
  end
end
