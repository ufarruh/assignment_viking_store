class Adress < ApplicationRecord
  belongs_to :city
  belongs_to :state
  belongs_to :zip_code
  belongs_to :user
end
