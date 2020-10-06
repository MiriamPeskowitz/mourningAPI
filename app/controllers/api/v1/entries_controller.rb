class Api::V1::EntriesController < ApplicationController
  
  def index
    entry = Entry,all
    render json: EntrySerializer.new(entry)
  end

  def show
    entry = Entry.find(params[:id])
    render json: EntrySerializer.new(entry)
  end 

  def create
    entry = Entry.create(entry_params)
    if entry.save 
       render json: EntrySerializer.new(entry), status: :accepted
     else
      render json: {errors: note.errors.full_messages}, status: :unprocessible_entity
    end 
  end

  def update
    entry = Entry.find(params[:id])
    entry.update_attributes(entry_params)
    if entry.save
      render json: EntrySerializer.new(entry)
    else
      render json: {errors: note.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    Entry.destroy(params[:id])
  end

  private
  def entry_params
    params.require(:entry).permit(:id, :title, :content, :public, :user_id)
  end 
end 
