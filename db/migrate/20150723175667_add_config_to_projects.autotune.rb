# This migration comes from autotune (originally 20150511214129)
class AddConfigToProjects < ActiveRecord::Migration
  def change
    add_column :autotune_projects, :blueprint_config, :text
  end
end
