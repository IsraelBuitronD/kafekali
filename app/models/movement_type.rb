class MovementType < ActiveRecord::Base
  has_many :movements

  scope :incomes, where(:is_income => true)
  scope :expenses, where(:is_income => false)
end
