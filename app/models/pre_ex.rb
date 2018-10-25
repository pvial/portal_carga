class PreEx < ApplicationRecord
  mount_uploader :imagen, ImagenUploader

  # Direct associations

  belongs_to :molde

  belongs_to :contenido,
             :class_name => "Contentido"

  has_many   :ejercicios,
             :foreign_key => "last_pre_ex_id"

  # Indirect associations

  # Validations

end
