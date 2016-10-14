class Billing < ApplicationRecord
  belongs_to :adress
  belongs_to :user
end
