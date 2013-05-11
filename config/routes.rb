Smartclient::Application.routes.draw do  
  root to: 'smartclient#index'
  post  'smartclient/data' 
end
