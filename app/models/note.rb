class Note < ApplicationRecord
  before_create :set_expires_by
  def note_seen
    #raise params.inspect
    update(:seen => true)
    return true
  end

  def set_expires_by
    self.expires_by = self.created_at + 1.minutes
  end

end
