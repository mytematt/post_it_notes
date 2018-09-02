class AddNameAndBodyToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :name, :string
    add_column :notes, :body, :text
  end
end
