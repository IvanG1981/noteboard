class AddIndexToProfilesNickname < ActiveRecord::Migration[6.0]
  def change
    add_index :profiles, :nickname, unique:true
  end
end
