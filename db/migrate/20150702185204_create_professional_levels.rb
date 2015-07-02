class CreateProfessionalLevels < ActiveRecord::Migration
  def change
    create_table :professional_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
