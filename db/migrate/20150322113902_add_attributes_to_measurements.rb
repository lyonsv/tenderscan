class AddAttributesToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :cow_id, :integer
    add_column :measurements, :ph, :integer
    add_column :measurements, :imp, :integer
    add_column :measurements, :nir, :integer
    add_column :measurements, :dfd_0, :integer
    add_column :measurements, :score, :integer
  end
end
