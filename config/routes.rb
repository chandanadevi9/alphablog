Rails.application.routes.draw do
 root 'pages#home'
 get 'about' ,to: 'pages#about'
 #get 'chandu' ,to: 'name#home'
 resources :articles
end
