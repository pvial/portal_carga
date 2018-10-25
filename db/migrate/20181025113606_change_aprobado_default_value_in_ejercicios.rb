class ChangeAprobadoDefaultValueInEjercicios < ActiveRecord::Migration[5.1]
  def change
    change_column_default :ejercicios, :aprobado, 'FALSE'
  end
end
