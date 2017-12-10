class Product < ApplicationRecord
  has_many :order_items
  belongs_to :category
  has_attached_file :image, styles: { medium: "280x280#", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, :presence => {:message => ": Debe ingresar un nombre"}
  validates :descripcion, :presence => {:message => ": Debe ingresar una Descripcion"}
  validates :stock, :presence => {:message => ": Debe ingresar la cantida"}
  validates :price, :numericality => {:message => ": Debe ingresar un precio de venta valido"}
  validates :stock, :numericality => {only_integer: true ,:message => ": Debe ingresar una cantidad valida"}
  validates :price, :numericality => { :greater_than_or_equal_to => 0, :message => ": Ingrese un numero valido"}
  validates :stock, :numericality => { :greater_than_or_equal_to => 0, :message => ": Ingrese un numero valido"}
  validates :price, numericality: { only_integer: true , :message => ": Ingrese un numero valido"}
end
