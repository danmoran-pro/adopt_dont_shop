Rails.application.routes.draw do
  get '/', to: 'welcome#landing_page'

  get '/shelters', to: 'shelters#index'
end
