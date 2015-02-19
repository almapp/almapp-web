json.extract! item, :id, :abbreviation, :short_name, :name, :campus_id, :address, :phone, :url, :email, :facebook, :twitter, :likes_count, :dislikes_count, :comments_count, :information

json.set! 'banner' do
  json.set! 'original', item.banner.url(:original)
  json.set! 'small', item.banner.url(:small)
end

json.cache_if! should_cache?, ['compact', item.localization] do
  json.localization do
    if item.localization.present?
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    else
      json.null!
    end
  end
end

json.extract! item, :created_at, :updated_at