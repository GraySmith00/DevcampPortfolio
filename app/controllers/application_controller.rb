class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include DeviseWhitelist
  include SetSource 
  include CurrentUserConcern
  include DefaultPageContent
  
end

# module GSViewTool
#   class Renderer
#     def self.copyright name, msg
#       "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
#     end
#   end
# end