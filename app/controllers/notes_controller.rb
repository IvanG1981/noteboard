class NotesController < ApplicationController
  def new
    @note = Note.new
  end
  def create
    Note.create(note_params)
    flash[:success] = 'Note Created'
    redirect_to root_path
  end
  def index
    @notes = Note.all.order(created_at: :desc)

  end
  def destroy
    @note.delete
    redirect_to root_path
  end

  def seen
    id = params[:id]
    @note = Note.find(id)
    @note.note_seen
    redirect_to root_path
    
  end

  private

  def note_params
    params.require(:note).permit(:content, :seen)
  end
end
