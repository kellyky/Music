class Band < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :musicians, through: :memberships
end
