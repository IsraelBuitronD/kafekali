class Product < ActiveRecord::Base
  belongs_to :product_type
  has_many :movements

  def friendly_label
    [self.product_type.name, self.name].join(' ')
  end
end
