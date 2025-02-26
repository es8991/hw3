class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end


  def create
    @entry = Entry.new
    @entry["title"] = params[:entry]["title"]
    @entry["description"] = params[:entry]["description"]
    @entry["occurred_on"] = params[:entry]["occurred_on"]
    @entry["place_id"] = params[:place_id]
    @entry.save
    redirect_to "/places/#{params[:place_id]}"
  end
end

