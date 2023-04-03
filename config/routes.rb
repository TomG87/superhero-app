Rails.application.routes.draw do
get "/superhero" => "superheroes#show"
get "/superhero" => "superheroes#index"
end
