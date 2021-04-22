class CreateTools < ActiveRecord::Migration[6.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :use
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
