class NotesController < ApplicationController
  before_action :authenticate_user!
  def new
    @note = Note.new

  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to root_path
      flash[:success] = 'Note Created'
    else
      flash[:error] = 'Error'
      render "new"
    end
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
