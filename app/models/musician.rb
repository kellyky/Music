class Musician < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :bands, through: :memberships
end
