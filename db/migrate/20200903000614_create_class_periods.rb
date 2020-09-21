class CreateClassPeriods < ActiveRecord::Migration[6.0]
  def change
    create_table :class_periods do |t|
      t.string :subject
      t.integer :period
      t.integer :level
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
