class Note < ApplicationRecord

  def note_seen
    #raise params.inspect
    update(:seen => true)
    return true
  end
  
end
