class AddDefaultSeenToNotes < ActiveRecord::Migration[6.0]
  def change
    change_column_default :notes, :seen, from: nil, to: false
  end
end
