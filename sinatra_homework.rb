require 'sinatra'
require 'sinatra/contrib'
# This will make changes to browser anything done in development if it is being developed.
require 'sinatra/reloader' if development?

#Targets and links the index. This will display all the animals currently on the database.
get "/animals" do
  "This is the animals link, list of animals below
  Dog,
  Mouse,
  Bear,
  Tiger,
  Wolves"
end

#Returns a HTML form to create a new animal. So if you want to add a cat, the form will allow you to add information about the cat which will be useful for your website.
get "/animals/new" do
  "Enter new animals form
  Name: Cat,
  Has Fur: Yes,
  Has teeth: Yes,
  Feeds young: Yes"
end

#This will create and save a new animal inside the database, and store it. It is posted to /animal index to save it within animal.
post "/animals" do
  "This is the animals link, list of animals below
  Cat,
  Dog,
  Mouse,
  Bear,
  Tiger,
  Wolves"
end

#Displays a specific animal within the database. If the ID is Bear, it will show a bear.
get "/animals/:id" do
  id = params[:id]
  "Get single animal #{id}, Polar #{id}, South Anerican #{id}, Panda #{id}, Black #{id}"
end

#Returns a form so that you can edit the selected animal. So if you wanted to edit bear paw size, this would help you gain access.
get "/animals/:id/edit" do
  "Name: Polar,
  Has Fur: Yes,
  Has teeth: Yes,
  Feeds young: Yes"
end

#PATCH and PUT are both used to update the specific aniaml within the database. Once edited, the animal would be updated within the database. This would be used if you enter your form after editing it.
#This is used to edit one specific feature of the animal.
patch "/animals/:id" do
  "Updated fur in animal"
end
#This is used to edit the whole animal.
put "/animals/:id" do
  "Updated animal"
end

#This is used to delete an animal from the database. This is to disploy all infomation about it, making it non-existance within the database. For example destroy /animal/Dinosaur will exterminate the Dinosaur.
delete "/animals/:id" do
  "Deleted animal"
end
