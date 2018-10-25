class AddEjercicioCountToMoldes < ActiveRecord::Migration[5.1]
  def change
    add_column :moldes, :ejercicios_count, :integer
  end
end
