class CreateTaskcomplets < ActiveRecord::Migration[5.2]
  def change
    create_table :taskcomplets do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.boolean :check, default: false

      t.timestamps
    end
  end
end
