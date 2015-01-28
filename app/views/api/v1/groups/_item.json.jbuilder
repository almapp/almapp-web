json.extract! item, :id, :name, :email, :facebook, :twitter, :likes_count, :dislikes_count, :information

json.set! 'subscribers_count', item.subscribers.size

json.extract! item, :created_at, :updated_at