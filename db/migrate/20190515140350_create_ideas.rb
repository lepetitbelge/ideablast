class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :content
      t.datetime :moment_to_be_delivered
      t.boolean :starred
      t.reference :user

      t.timestamps
    end
  end
end
