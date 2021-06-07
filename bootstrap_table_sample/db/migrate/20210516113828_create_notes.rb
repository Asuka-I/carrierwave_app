class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :language
      t.string :description

      t.timestamps
    end
  end
end
