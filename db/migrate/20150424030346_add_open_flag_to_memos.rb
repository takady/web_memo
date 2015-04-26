class AddOpenFlagToMemos < ActiveRecord::Migration
  def change
    add_column :memos, :open_flag, :boolean
  end
end
