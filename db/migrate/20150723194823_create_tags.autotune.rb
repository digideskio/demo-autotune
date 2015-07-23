# This migration comes from autotune (originally 20150209214443)
# create the tags table
class CreateTags < ActiveRecord::Migration
  def change
    create_table :autotune_tags do |t|
      t.string :slug, :index => true
      t.string :title

      t.timestamps null: false
    end
  end
end
