namespace :seed do

  def seed_url_for(class_name, path)
    "https://raw.githubusercontent.com/mrpatiwi/almapp-web-seed-assets/master/#{class_name}/#{path}"
  end

  def banner_url_for(area)
    seed_url_for(area.class.name.pluralize.underscore.downcase, "#{area.abbreviation.downcase}.jpg")
  end

  def seed_file(file_name)
    file = File.join(Rails.root, 'db', 'seeds', "#{file_name}.rb")
    load(file) if File.exist?(file)
  end

  desc "TODO"
  task organizations: :environment do
    seed_file('01_organizations')
  end

  desc "TODO"
  task campuses: :environment do
    seed_file('02_campuses')
  end

  desc "TODO"
  task faculties: :environment do
    seed_file('03_faculties')
  end

  desc "TODO"
  task buildings: :environment do
    seed_file('04_buildings')
  end

  desc "TODO"
  task academic_unities: :environment do
    seed_file('05_academic_unities')
  end

  desc "TODO"
  task places: :environment do
    seed_file('06_places')
  end

  desc "TODO"
  task webpages: :environment do
    seed_file('07_webpages')
  end

end
