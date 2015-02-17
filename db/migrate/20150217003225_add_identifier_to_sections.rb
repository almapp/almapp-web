class AddIdentifierToSections < ActiveRecord::Migration
  def up
    add_column :sections, :identifier, :string

    Section.all.each do |section|
      section.update_attribute(:identifier, section.expected_identifier)
    end

    change_column :sections, :identifier, :string, null: false
    add_index :sections, [:identifier, :year, :period], unique: true
  end

  def down
    remove_column :sections, :identifier
    remove_index :sections, :column => [:identifier, :year, :period]
  end
end
