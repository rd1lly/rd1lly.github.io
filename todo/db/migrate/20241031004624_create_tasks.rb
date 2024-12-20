class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :additional_details
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
