class Ejercicio < ApplicationRecord
  # Direct associations

  belongs_to :creador

  belongs_to :molde,
             :counter_cache => true

  belongs_to :contenido,
             :class_name => "Contentido"

  belongs_to :last_pre_ex,
             :class_name => "PreEx"

  # Indirect associations

  # Validations

end
