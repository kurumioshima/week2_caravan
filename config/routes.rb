Rails.application.routes.draw do

get '/blogs' => 'blogs#index'
get 'blogs/:id' => 'blogs#show', as: 'post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'blogs/new' => 'blogs#new'
post '/blogs' => 'blogs#create'
# postは保存

end
