class Booking

include DataMapper::Resource

has n, :users, through: Resource
has n, :property, through: Resource

    property :id, Serial
    property :pending, Boolean, required: false
    property :approved, Boolean, required: false
    property :confirmed, Boolean, required: false
    property :rejected, Boolean, required: false
    property :cancelled, Boolean, required: false
    property :completed, Boolean, required: false
    property :date, Date
    property :property_id, Integer

end
