class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :image
end
