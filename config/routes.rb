Rails.application.routes.draw do
get "/superheroes/:id" => "superheroes#show"
get "/superheroes" => "superheroes#index"
post "/superheroes" => "superheroes#create"
patch "/superheroes/:id" => "superheroes#update"
delete "/superheroes/:id" => "superheroes#destroy"
end
