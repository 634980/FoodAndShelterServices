class Site < ApplicationRecord
  validates :site_name, presence: true, length: { maximum: 50 }
  validates :site_address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 50 }
  validates :zipcode, presence: true, length: { maximum: 50 }
  validates :site_contact_number, presence: true, length: { maximum: 10 }
end
