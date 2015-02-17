class RemoveCurriculumUrlOnCareers < ActiveRecord::Migration
  def change
    remove_column :careers, :curriculum_url, :string
  end
end
