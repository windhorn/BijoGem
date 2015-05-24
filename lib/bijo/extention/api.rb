module Api
  #type=rand&count=10&format=xml
  BASE_API_URL = 'http://bjin.me/api/'
  def api_url(count= 1, query= nil )
    params = {}.tap {|hash|
      hash.store('count',  count)
      hash.store('format', 'json')
      unless query.nil?
        hash.store('type', "search")
        hash.store('query', query)
      else
        hash.store('type', "rand")
      end
    }
    BASE_API_URL + "?" + params.map{|key, value| URI.encode(key.to_s) + "=" + URI.encode(value.to_s)}.join("&")
  end
end
