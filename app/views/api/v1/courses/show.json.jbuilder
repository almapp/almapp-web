json.set! json_root do
  json.partial! template_for_item, item: @item

  sections = @item.sections

  if params[:year] && params[:semester]
    periods = [[params[:year], params[:semester]]]
  elsif params[:year]
    periods = [[params[:year], 1], [params[:year], 2]]
  else
    periods = @item.available_periods
  end

  json.periods get_periods do |periods|
    json.set! periods.year do
      json.array! periods.periods do |period|
        json.set! period do
          json.sections do
            json.cache_collection! sections.period(periods.year, period), key: 'item' do |section|
              json.section do
                json.partial! template_for_item(section, 'item'), item: section
              end
            end
          end
        end
      end
    end
  end

  json.cache! ['compact', @item.academic_unity], expires_in: 1.hours do
    json.academic_unity do
      json.partial! template_for_item(@item.academic_unity, 'compact'), item: @item.academic_unity
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(teachers section_students comments events posts published_posts likes dislikes)
  end
end