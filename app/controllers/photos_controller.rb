class PhotosController < ApplicationController
    def create
		@photo = photo.new(photo_params)
		@photo.save

		respond_to do |format|
			format.json { render :json => { url: Refile.attachment_url(@photo, :photo)} }
		end
	end
end
