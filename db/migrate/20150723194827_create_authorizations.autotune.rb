# This migration comes from autotune (originally 20150210191559)
# create omniauth authorizations table
class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :autotune_authorizations do |t|
      t.references :user, index: true
      t.string :provider, index: true
      t.string :uid, index: true
      t.text :info
      t.text :credentials
      t.text :extra

      t.timestamps null: false
    end
    add_foreign_key :autotune_authorizations, :autotune_users, column: :user_id
  end
end
