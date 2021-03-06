class Note < ApplicationRecord
  after_save :set_expires_by
  validates :content, presence: true, length: { maximum: 140}

  def note_seen
    #raise params.inspect
    update(:seen => true)
    return true
  end

  def set_expires_by
    self.expires_by = self.created_at + 24.hours
  end

end
