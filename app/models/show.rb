class Show < ApplicationRecord
  belongs_to :channel
  extend Searchable
end
