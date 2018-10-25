class ChangeDificultadDefaultValueInPreExes < ActiveRecord::Migration[5.1]
  def change
    change_column_default :pre_exes, :dificultad, '1'
  end
end
