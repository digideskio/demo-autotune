# This migration comes from autotune (originally 20150521184916)
class ExpandUserExtraFieldLength < ActiveRecord::Migration
  def change
    change_column :autotune_authorizations, :extra, :text, :limit => 128.kilobytes
  end
end
