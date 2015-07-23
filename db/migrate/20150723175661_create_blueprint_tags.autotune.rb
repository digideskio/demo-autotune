# This migration comes from autotune (originally 20150209214815)
# create the blueprints/tags relation table
class CreateBlueprintTags < ActiveRecord::Migration
  def change
    create_table :autotune_blueprint_tags do |t|
      t.references :blueprint, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :autotune_blueprint_tags, :autotune_blueprints, column: :blueprint_id
    add_foreign_key :autotune_blueprint_tags, :autotune_tags, column: :tag_id
  end
end
