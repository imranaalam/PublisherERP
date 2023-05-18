class CreateCarriageCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :carriage_costs do |t|
      t.decimal :carriage_rate_per_rim
      t.decimal :carriage_for_paper

      t.timestamps
    end
  end
end
