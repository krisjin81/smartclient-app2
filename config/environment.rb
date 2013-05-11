# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Smartclient::Application.initialize!
 
Dir["#{Rails.root}/lib/DataResource/*.rb"].each do |filename|
  #require filename
end