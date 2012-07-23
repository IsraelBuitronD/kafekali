class Movement < ActiveRecord::Base
  belongs_to :movement_type
  belongs_to :product
  belongs_to :provider
  belongs_to :order

  validates :product_id, :presence => true
  validates :provider_id, 
            :presence => true,
            :if => :validate_presence_of_provider_id
  validates :amount, 
            :presence => true,
            :numericality => { :greater_than => 0 }
  validates :movement_type_id, :presence => true

  private
  def validate_presence_of_provider_id
    # Required when movement is a purchase
    self.movement_type_id == 1 # 1 => Purchase
  end
end
