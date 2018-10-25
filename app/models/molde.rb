class Molde < ApplicationRecord
  # Direct associations

  has_many   :drafts,
             :class_name => "PreEx"

  has_many   :ejercicios

  # Indirect associations

  # Validations

end
