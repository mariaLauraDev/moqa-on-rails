class HomeController < ApplicationController
  def index
    @routes = Rails.application.routes.routes.map do |route|
      { path: route.path.spec.to_s, controller: route.defaults[:controller], action: route.defaults[:action] }
    end.reject { |route| route[:path].starts_with?("/rails") } # Filtrar rotas internas do Rails
  end
end
