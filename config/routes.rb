Rails.application.routes.draw do
  get "/" => "home#index", as: :root

  get "/models" => "models#index"
end
