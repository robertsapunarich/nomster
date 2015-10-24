class AddUserIdToPhotosIndex < ActiveRecord::Migration
  add_index :photos, [:user_id, :place_id]
end
