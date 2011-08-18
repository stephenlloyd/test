require 'sinatra'
require 'haml'

get '/?' do
  ps = []
  params.each { |key, value| ps << value.to_s} 
  ur = ps.join  
  if !params.empty?
    redirect "http://www.google.co.uk/#hl=en&cp=4&gs_id=g&xhr=t&q=" + ur
  else
    haml :home
  end

end 

