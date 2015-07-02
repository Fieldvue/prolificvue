class CreateResourceTypes < ActiveRecord::Migration
  def change
    create_table :resource_types do |t|
      t.string :type
      t.integer :professional_level_id

      t.timestamps null: false
    end
  end
end
