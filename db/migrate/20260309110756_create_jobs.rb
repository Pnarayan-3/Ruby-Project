class CreateJobs < ActiveRecord::Migration[8.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
