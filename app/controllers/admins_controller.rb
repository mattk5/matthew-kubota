class AdminsController < ApplicationController
  before_action :authenticate_author!
end

# May have to move the 'posts' view folder into the 'admin' views folder to ensure all the styling is working correctly. Might have to go back through this episode and fix naming of route paths. Also have to create an admin within the console.
