class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :country, :website, :full_image, :cropped_image
end
