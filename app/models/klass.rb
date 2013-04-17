class Klass < ActiveRecord::Base
  attr_accessible :car_id, :klass_name, :price

  has_many :cars, :dependent => :destroy

  validates :klass_name, :presence => true, :uniqueness => true
  validates :price, numericality: true

  def to_param
    klass_name
  end
end
