json.set! json_root do
  json.partial! template_for_item, item: @item

  json.academic_unities do
    json.cache_collection! @item.academic_unities, key: 'compact' do |unity|
      json.set! json_root(unity) do
        json.partial! template_for_item(unity, 'compact'), item: unity
      end
    end
  end

  json.periods get_periods do |periods|
    json.set! periods.year do
      json.array! periods.periods do |period|
        json.set! period do
          json.courses do
            json.cache_collection! @item.courses_for_period(periods.year, period), key: 'compact', expires_in: long do |course|
              json.set! json_root(course) do
                json.partial! template_for_item(course, 'compact'), item: course
              end
            end
          end
          json.sections do
            json.cache_collection! @item.sections.period(periods.year, period), key: 'compact' do |section|
              json.set! json_root(section) do
                json.partial! template_for_item(section, 'compact'), item: section
              end
            end
          end
        end
      end
    end
  end
=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments likes dislikes)
  end
=end
end