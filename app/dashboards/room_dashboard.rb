require "administrate/base_dashboard"

class RoomDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    number: Field::String,
    isAvailable: Field::Boolean,
    description: Field::String,
    price: Field::String,
    image1: Field::String,
    image2: Field::String,
    image3: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :number,
    :isAvailable,
    :price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :number,
    :isAvailable,
    :description,
    :price,
    :image1,
    :image2,
    :image3,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :number,
    :isAvailable,
    :description,
    :price,
    :image1,
    :image2,
    :image3,
  ].freeze

  # Overwrite this method to customize how rooms are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(room)
  #   "Room ##{room.id}"
  # end
end
