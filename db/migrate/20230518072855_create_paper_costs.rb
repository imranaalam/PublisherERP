class CreatePaperCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :paper_costs do |t|
      t.decimal :rims_w_w
      t.decimal :waste_print_plate
      t.decimal :rims_for_waste
      t.decimal :rims_required
      t.decimal :additional_rims_for_rounding
      t.decimal :total_rims_print_size
      t.decimal :divide_for_purchase_size
      t.decimal :total_rims_for_purchase
      t.decimal :paper_size_length
      t.decimal :paper_size_width
      t.decimal :paper_multiply_LxW
      t.decimal :paper_weight_per_kg
      t.decimal :formula
      t.decimal :paper_rate_per_kg
      t.decimal :rate_per_rims
      t.decimal :paper_for_text_cost

      t.timestamps
    end
  end
end
