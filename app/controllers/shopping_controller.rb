class ShoppingController < ApplicationController

  def front
    @subdomain = request.subdomain
    @store     = Store.find_by_subdomain(request.subdomain.downcase!)
  end

end
