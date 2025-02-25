class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @place = Place.find_by({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new
    @entry["name"] = params["name"]
    @entry["detail"] = params["detail"]
    @entry["when"] = params["when"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{params["place_id"]}"
  end
end
