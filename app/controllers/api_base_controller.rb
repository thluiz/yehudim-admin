class ApiBaseController < ApplicationController

  protect_from_forgery except: :index

end
