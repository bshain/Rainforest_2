class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :summary
      t.integer :price_in_cents

      t.timestamps
    end
  end
end
