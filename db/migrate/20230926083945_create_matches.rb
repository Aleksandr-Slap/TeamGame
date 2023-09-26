class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :title, null: false
      t.integer :team1, null: false
      t.integer :team2, null: false

      t.timestamps
    end
  end
end
