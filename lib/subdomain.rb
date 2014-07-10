class Subdomain
  def self.matches?(request)
    case request.subdomain
    when 'www', '', nil
      false
    else
      store = Store.find_by_subdomain(request.subdomain.downcase!)
      if store
        true
      else
        false
      end
    end
  end
end