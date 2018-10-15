class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :date
      t.string :amount

      t.timestamps
    end
  end
end
