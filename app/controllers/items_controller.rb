class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items, status: :accepted
  end

  def create
    image = Cloudinary::Uploader.upload(params[:image])
    item = Item.create(image: image["url"])

    render json: item, status: :accepted
  end
end
