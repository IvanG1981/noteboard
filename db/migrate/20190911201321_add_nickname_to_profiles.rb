class AddNicknameToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :nickname, :string
  end
end
