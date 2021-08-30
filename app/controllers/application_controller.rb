# class ApplicationController < ActionController::API
# end

# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  
  def render_jsonapi_response(resource)
    if resource.errors.empty?
      render jsonapi: resource
    else
      render jsonapi_errors: resource.errors, status: 400
    end
  end

end

