json.partial! template_for_resource, resource: @resource

json.academic_unities do
  json.cache_collection! @resource.academic_unities, key: 'compact' do |unity|
    json.partial! template_for_resource(unity, 'compact'), resource: unity
  end
end

json.periods get_periods do |periods|
  json.set! periods.year do
    json.array! periods.periods do |period|
      json.set! period do
        json.courses do
          json.cache_collection! @resource.courses(periods.year, period), key: 'compact', expires_in: long do |course|
            json.partial! template_for_resource(course, 'compact'), resource: course
          end
        end
        json.sections do
          json.cache_collection! @resource.sections.period(periods.year, period), key: 'compact' do |section|
            json.partial! template_for_resource(section, 'compact'), resource: section
          end
        end
      end
    end
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(comments likes dislikes)
end