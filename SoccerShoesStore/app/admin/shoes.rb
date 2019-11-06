# frozen_string_literal: true

ActiveAdmin.register Shoe do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :color, :status, :size, :category, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :color, :status, :size, :category, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, :price, :color, :status, :size, :category, :image
  form(html: { multipart: true }) do |f|
    f.inputs 'Shoe' do
      f.input :name
      f.input :price
      f.input :color
      f.input :status, as: :select, collection: ['On Sale', 'New', 'Recently Updated']
      f.input :category, as: :select, collection: ['Low Cut', 'Mid Cut', 'Indoor', 'Outdoor']
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    column :id
    column :name
    column :price
    column :color
    column :status
    column :size
    column :category
    column 'Image' do |shoe|
      if shoe.image.attached?
        image_tag shoe.image, size: '30x30'
      else
        'No Image'
      end
    end
    actions
  end
end
