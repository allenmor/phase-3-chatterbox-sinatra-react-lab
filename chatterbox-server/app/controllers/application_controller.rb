class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  get '/messages' do
    message = Message.order(created_at: :asc)
    message.to_json
  end
end
