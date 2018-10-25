class PreEx < ApplicationRecord
  # Direct associations

  has_many   :ejercicios,
             :foreign_key => "last_pre_ex_id"

  # Indirect associations

  # Validations

end
