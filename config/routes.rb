Rails.application.routes.draw do
  resources :sciences
 root 'pages#home'
 get 'about' ,to: 'pages#about'
 #get 'chandu' ,to: 'name#home'
 resources :articles
end
