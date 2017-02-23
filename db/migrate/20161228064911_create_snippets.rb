class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :content
      t.text :description
      t.boolean :visible
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
