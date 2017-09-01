class CreatePledgers < ActiveRecord::Migration[5.0]
  def change
    create_table :pledgers do |t|
      t.string :first_name
      t.string :last_name
      t.string :pledge
      t.string :img_url

      t.timestamps
    end
  end
end
