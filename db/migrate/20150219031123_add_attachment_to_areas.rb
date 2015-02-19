class AddAttachmentToAreas < ActiveRecord::Migration
  def self.areas
    [:organizations, :campuses, :faculties, :academic_unities, :buildings]
  end

  def self.up
    areas.each do |area|
      add_attachment area, :banner
    end
  end

  def self.down
    areas.each do |area|
      remove_attachment area, :banner
    end
  end
end
