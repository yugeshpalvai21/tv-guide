class Channel < ApplicationRecord
  has_many :shows
  extend Searchable
end
