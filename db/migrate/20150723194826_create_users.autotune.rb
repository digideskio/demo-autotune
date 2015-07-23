# This migration comes from autotune (originally 20150210174628)
# create users table
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :autotune_users do |t|
      t.string :email, :index => true
      t.string :name
      t.string :api_key, :index => true
      t.text :meta

      t.timestamps null: false
    end
  end
end
