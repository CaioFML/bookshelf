class Session < ApplicationRecord
  belongs_to :user

  before_create do
    self.key = SecureRandom.hex(40)
  end
end
