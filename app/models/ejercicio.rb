class Ejercicio < ApplicationRecord
  mount_uploader :imagen, ImagenUploader

  # Direct associations

  belongs_to :aprobador,
             :required => false

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
