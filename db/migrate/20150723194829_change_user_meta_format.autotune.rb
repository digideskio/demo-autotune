# This migration comes from autotune (originally 20150506195022)
class ChangeUserMetaFormat < ActiveRecord::Migration
  def change
    Autotune::User.connection.execute("UPDATE autotune_users SET meta = '{}'")
  end
end
