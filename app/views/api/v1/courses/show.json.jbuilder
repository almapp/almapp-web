json.partial! template_for_resource, resource: @resource

sections = @resource.sections

if params[:year] && params[:semester]
  periods = [[params[:year], params[:semester]]]
elsif params[:year]
  periods = [[params[:year], 1], [params[:year], 2]]
else
  periods = @resource.available_periods
end

json.periods get_periods do |periods|
  json.set! periods.year do
    json.array! periods.periods do |period|
      json.set! period do
        json.sections do
          json.cache_collection! sections.period(periods.year, period), key: 'resource' do |section|
            json.partial! template_for_resource(section, 'resource'), resource: section
          end
        end
      end
    end
  end
end

json.academic_unity do
  json.cache! ['compact', @resource.academic_unity], expires_in: 1.hours do
    json.partial! template_for_resource(@resource.academic_unity, 'compact'), resource: @resource.academic_unity
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(teachers section_students comments events posts published_posts likes dislikes)
end
