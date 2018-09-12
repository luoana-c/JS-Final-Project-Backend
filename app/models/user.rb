class User < ApplicationRecord
  has_many :likes
  has_many :hotels, through: :likes

  validates :name, presence: true, uniqueness: true

  def findLikedHotels
    id_array = Like.all.select{|like| like.user_id == self.id}.map{|like| like.hotel_id}
    id_array.map do |arr_id|
      Hotel.all.find{|hotel|hotel.id ==arr_id}
    end
  end

end
