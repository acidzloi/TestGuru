class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :test_id
      t.string :status

      t.timestamps
    end
  end
end
