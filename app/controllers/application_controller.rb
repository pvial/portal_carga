class ApplicationController < ActionController::Base
  before_action :authenticate_creador!

  protect_from_forgery with: :exception
end
