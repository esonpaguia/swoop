class RouteController < ApplicationController

  def index

    urlParam = params["ll"];

    uri = URI.parse("http://hyperlapse.tllabs.io/route?ll="+urlParam)

    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    render :json => response.body

  end

end
