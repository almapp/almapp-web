# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Loads from "seeds" folder sorting by number prefix
def load_campuses
  @sj ||= Campus.find_by_abbreviation('SJ')
  @cc ||= Campus.find_by_abbreviation('CC')
  @lc ||= Campus.find_by_abbreviation('LC')
  @or ||= Campus.find_by_abbreviation('OR')
  @vr ||= Campus.find_by_abbreviation('VR')
  @ex ||= Campus.find_by_abbreviation('EX')
end

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
