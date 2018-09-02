class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  
  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
    render :form
  end

  def create
    @note = Note.new(note_params)
      if @note.save
        redirect_to note_path(@note)
      else
        render :form
      end
  end

  def edit
    render :form
  end

  def update
    if @note.update(page_params)
      redirect_to note_path(@note)
    else
      render :form
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end

private

def note_params
  params.require(:note).permit(:name, :body)
end

def set_note
  @note = Note.find(params[:id])
end


end
