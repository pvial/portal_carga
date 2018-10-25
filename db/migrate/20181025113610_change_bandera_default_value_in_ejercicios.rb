class ChangeBanderaDefaultValueInEjercicios < ActiveRecord::Migration[5.1]
  def change
    change_column_default :ejercicios, :bandera, 'FALSE'
  end
end
