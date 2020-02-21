module Searchable
  extend ActiveSupport::Concern

  def search(search_term)
    where('LOWER(name) LIKE ?', "%#{search_term.to_s.downcase}%")
  end
end