class Lease < ActiveRecord::Base
  attr_accessible :car_id, 
                  :lease_from, 
                  :lease_to, 
                  :leased_by_identity_card_num, 
                  :leased_by_last_name, 
                  :leased_by_name

  validates :leased_by_identity_card_num, presence: true
  validates :leased_by_name, presence: true
  validates :leased_by_last_name, presence: true

  belongs_to :car

  def rented_at_given_date? date_from, date_to
    self.car.leases.each do |lease|
      if (lease.lease_from >= date_from && lease.lease_to <= date_to) || \
        (lease.lease_from <= date_from && lease.lease_to >= date_to) || date_to == date_from
        return true
      end
    end
    return false
  end

  class << self 
    def date_from_params_hash name, hash
      date = %w(1 2 3).map { |d| hash["#{name}"+"(#{d}i)"]}.join('-')
      Date.parse(date)
    end
  end
end
