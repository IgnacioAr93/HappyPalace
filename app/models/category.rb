class Category < ApplicationRecord
	has_many :product
	has_attached_file :image, styles: { medium: "280x280#", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :nombre, :presence => {:message => ": Debe ingresar el nombre de la categoria"}
	validates :nombre, :uniqueness => {:message => ": La categoria ya existe"}
end
