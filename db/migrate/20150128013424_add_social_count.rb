class AddSocialCount < ActiveRecord::Migration
  SOCIABLES = [:organizations,
               :campuses,
               :faculties,
               :buildings,
               :academic_unities,
               :places,
               :careers,
               :comments,
               :courses,
               :events,
               :groups,
               :posts,
               :teachers]

  def up
    SOCIABLES.each do |sociable|
      add_column sociable, :comments_count, :integer, default: 0, null: false
      add_column sociable, :likes_count, :integer, default: 0, null: false
      add_column sociable, :dislikes_count, :integer, default: 0, null: false
    end
  end

  def down
    SOCIABLES.each do |sociable|
      remove_column sociable, :comments_count
      remove_column sociable, :likes_count
      remove_column sociable, :dislikes_count
    end
  end
end
