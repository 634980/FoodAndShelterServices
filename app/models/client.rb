class Client < ApplicationRecord
   validates :full_name, presence: true, length: { maximum: 50 }
   validates :phone_number, presence: true, length: { maximum: 50 }
end
