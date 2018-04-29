class Room < ApplicationRecord
  @@num = 1
  belongs_to :user, optional: true

  after_initialize :set_defaults, :if => :new_record?
  after_create :inc_num

  def set_defaults
    self.number = @@num
    self.isAvailable = true
    self.description = "this is a new room"
    self.price = "100"
  end

  def inc_num
    @@num += 1
  end
end
