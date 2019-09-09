class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :content
      t.boolean :seen
      t.datetime :expires_by

      t.timestamps
    end
  end
end
