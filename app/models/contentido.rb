class Contentido < ApplicationRecord
  # Direct associations

  has_many   :drafts,
             :class_name => "PreEx",
             :foreign_key => "contenido_id"

  # Indirect associations

  # Validations

end
