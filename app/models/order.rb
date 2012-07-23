class Order < ActiveRecord::Base
  has_many :movements
  accepts_nested_attributes_for :movements
  # TODO: add a 'reject_if' procedure to last statement to avoid invalid or blank fields.

  OPENED = 1
  CLOSED = 2
  PAID   = 3

  scope :opened, where(:status => OPENED)
  scope :closed, where(:status => CLOSED)
  scope :paid,   where(:status => PAID)

  validates :status,
            :presence => true,
            :numericality => {
               :only_integer => true,
               :greater_than_or_equal_to => OPENED,
               :less_than_or_equal_to => PAID }

end
