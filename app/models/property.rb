class Property

  include DataMapper::Resource
  # belongs_to :user
  # has n, :bookings, through: Resource

  property :id, Serial
  property :title, String, required: true
  property :property_type, String, required: true
  property :location, String, required: true
  property :bedrooms, Integer, required: true
  property :sleeps, Integer, required: true
  property :photo, String, required: true
  property :price, Float, required: true
  property :date_available_to, String, required: true
  property :date_available_from, String, required: true

end
