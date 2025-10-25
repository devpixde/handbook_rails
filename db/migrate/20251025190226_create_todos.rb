class CreateTodos < ActiveRecord::Migration[8.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :body
      t.string :color
      t.boolean :pinned
      t.boolean :deleted
      t.boolean :published
      t.date :duedate
      t.boolean :done

      t.timestamps
    end
  end
end
