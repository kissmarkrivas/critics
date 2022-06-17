Rails.application.routes.draw do
  get "/companies", to: "companies#index"
  post "/companies", to: "companies#create"
end
