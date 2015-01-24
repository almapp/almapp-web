json.extract! item, :id, :anonymous, :hidden #, :like_count, :dislike_count
json.extract! item, :user_id, :comment, :created_at
json.set! 'path', api_v1_comment_path(item)