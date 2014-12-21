module Zoneable
  extend ActiveSupport::Concern

  included do
    has_many :places, -> { order(identifier: :asc) }, as: :area
  end
end