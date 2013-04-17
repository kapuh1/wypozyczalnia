Wypozyczalnia::Application.routes.draw do
  
  devise_for :owners

  resources :klasses, path: 'klasa'

  resources :cars do 
    resources :leases 
  end
  
  root to: "owners#index"
end
