published_posts_size = published_posts.size
json.set! :published_post_count, published_posts_size
if params[:latest_posts] && params[:latest_posts] > 0
  json.published_posts published_posts.last(params[:latest_posts]) do |post|
    json.partial! 'api/v1/posts/post', post: post
  end
end