class AirbnbsController < ApplicationController
  def index
    airbnbs = Airbnb.all
    render json: airbnbs, status: :accepted
  end

  def create
    images = [] # empty array
    params[:images].each do |image| # iterate through each image
      uploaded_image = Cloudinary::Uploader.upload(image) # upload image to cloudinary
      images << uploaded_image["url"] # push image url to images array
    end
    items = images.map { |image_url| Airbnb.create(image: image_url) } # iterate through images array and create a new item for each image url
    render json: items, status: :accepted # render items as json
  end

    
end
