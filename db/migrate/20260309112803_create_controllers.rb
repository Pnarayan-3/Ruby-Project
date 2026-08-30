class CreateControllers < ActiveRecord::Migration[8.1]
  def change
    create_table :controllers do |t|
      t.timestamps
    end
  end
end
