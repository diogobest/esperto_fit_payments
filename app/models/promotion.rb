class Promotion < ApplicationRecord

  validates :name, :description, :value_percent_discount, :discount_max, :cod_promotion, :cupom_number, :begin_promotion, :end_promotion, presence: true
end
