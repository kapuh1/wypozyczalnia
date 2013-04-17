class Car < ActiveRecord::Base
  attr_accessible :description, :name, :klass
  belongs_to :klass
  has_many :leases

  validates :name, presence: true

  def is_rented?
    self.leases.each do |lease|
      if lease.lease_from <= Date.today && lease.lease_to >= Date.today
        return true
      end
    end
    return false
  end
end
