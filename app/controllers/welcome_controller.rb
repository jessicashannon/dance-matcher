class WelcomeController < ApplicationController

def index
  redirect_to :arrangements if admin_signed_in?
end

end
