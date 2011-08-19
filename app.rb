require 'sinatra'
require 'haml'

get '/' do
  ps = []
  params.each { |key, value| ps << value.to_s} 
  ur = ps.join  
  if !params.empty?
    redirect "http://www.google.co.uk/#hl=en&cp=4&gs_id=g&xhr=t&q=" + ur
  else
    haml :home
  end
end
  
  get '/index_ebay' do
    haml :ebay
  end
  
  get '/index_amazon' do
    haml :amazon
  end
  
  get '/index_info' do
 haml :products
end

get '/index_rrfc' do
  haml :resell
end

get '/index_youtube' do
  haml :youtube
end

get '/index_rss' do 
  haml :news
end


