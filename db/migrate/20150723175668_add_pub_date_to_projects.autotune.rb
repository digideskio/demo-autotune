# This migration comes from autotune (originally 20150512141546)
class AddPubDateToProjects < ActiveRecord::Migration
  def change
    add_column :autotune_projects, :published_at, :datetime
    add_column :autotune_projects, :data_updated_at, :datetime
  end
end
