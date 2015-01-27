json.extract! item, :id, :name, :email, :facebook, :twitter, :like_count, :dislike_count, :information

json.set! 'subscribers_count', item.subscribers.size

json.extract! item, :created_at, :updated_at