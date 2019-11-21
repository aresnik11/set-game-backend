# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://best-set-game.netlify.com/'

    resource '/api/v1/cards', headers: :any, methods: [:get, :options]
    resource '/api/v1/games', headers: :any, methods: [:get, :post, :patch, :options]
    resource '/api/v1/users', headers: :any, methods: [:get, :post, :options]
  end
end
