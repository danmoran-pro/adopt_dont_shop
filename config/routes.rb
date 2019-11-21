Rails.application.routes.draw do
  get '/', to: 'welcome#landing_page'

  get '/shelters', to: 'shelters#index'
  get '/shelters/:id', to: 'shelters#show'
end
