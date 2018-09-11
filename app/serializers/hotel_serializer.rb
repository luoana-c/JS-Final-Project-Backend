class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :full_image, :cropped_image
end
