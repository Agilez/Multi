class Store < ActiveRecord::Base
  validates_presence_of :subdomain, :name
  validates_format_of :subdomain, :with =>  /\A[a-zA-Z0-9_\-]+\z/, :message => 'O Subdominio nao pode possuir caracteres especiais.', :allow_blank => true
  validates_uniqueness_of :subdomain, :case_sensitive => false
  validates_exclusion_of :subdomain, :in => %w( support blog www billing help api ), :message => "O subdominio nao esta disponivel."
  validates_length_of :subdomain, :minimum => 3, :maximum => 10, :allow_blank => true

  before_validation :downcase_subdomain

  protected

    def downcase_subdomain
      self.subdomain.downcase! if attribute_present?("subdomain")
    end
end
