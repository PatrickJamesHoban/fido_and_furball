class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: 'Coming soon... Fido and Furball, the greatest thing to ever happen for pets! - An Ellie Farmgirl, Mary Nelson and Patrick Hoban Production' 
  end
  
end
