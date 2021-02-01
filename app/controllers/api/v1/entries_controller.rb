class Api::V1::EntriesController < ApplicationController
  
  def index
    entries = Entry.all
    render json: EntrySerializer.new(entries)
  end

  def show
    entry = Entry.find(params[:id])
    render json: EntrySerializer.new(entry)
  end 

# code for user.entry.build -- with current_user 
   def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      render json:  EntrySerializer.new(@entry), status: :created
    else
      render json: { error: @entry.errors.full_messages.to_sentence}, status: :unprocessable_entity
    end
  end


  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(entry_params)
    if @entry.save
      render json: EntrySerializer.new(entry)
    else
      render json: {error: @entry.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    Entry.destroy(params[:id])
  end

  private
  def entry_params
    params.require(:entry).permit( :title, :content, :user_id)
  end 
end 
