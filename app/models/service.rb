class Service < ApplicationRecord
  validates :service_type, presence: true, length: {maximum:50}
  validates :site_id, presence: true
  validates :employee_id, presence: true
  validates :client_id, presence: true
  validates :date, presence: true
end
