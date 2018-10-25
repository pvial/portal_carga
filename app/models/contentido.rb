class Contentido < ApplicationRecord
  # Direct associations

  belongs_to :eje

  has_many   :ejercicios,
             :foreign_key => "contenido_id"

  has_many   :drafts,
             :class_name => "PreEx",
             :foreign_key => "contenido_id"

  # Indirect associations

  # Validations

end
