class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: {
             status: 200,
             items: items,
           }
  end

  def create
    image = Cloudinary::Uploader.upload(params[:image])
    item = Item.create(image: image["url"])

    render json: {
             status: 200,
             item: item,
           }
  end
end
