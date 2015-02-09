module Nameable
  extend ActiveSupport::Concern

  included do
    before_validation :set_missing_names
    validates :name, presence: true
    validates :short_name, presence: true
  end

  # for the given article/event returns the first comment
  def set_missing_names
    if self.name.present? && self.short_name.present?
      return
    end
    unless name.present?
      self.name = self.short_name
    end
    unless self.short_name.present?
      self.short_name = self.name
    end
    unless self.abbreviation.present?
      split = short_name.split(' ')
      if split.size == 1
        self.abbreviation = short_name[0..2] rescue short_name
      else
        self.abbreviation = ''
        short_name.split(' ').each do |string|
          self.abbreviation = self.abbreviation.concat(string[0])
        end
      end
    end
  end
end