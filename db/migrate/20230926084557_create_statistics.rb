class CreateStatistics < ActiveRecord::Migration[7.0]
  def change
    create_table :statistics do |t|
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.references :match, foreign_key: true
      t.integer :accuracy, null: false, default: 0
      t.integer :distance, null: false, default: 0

      t.timestamps
    end
  end
end
