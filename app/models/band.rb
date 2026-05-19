class Band < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :musicians, through: :memberships

  def musicians_not_in_band
    Musician.excluding(musicians)
  end
end
