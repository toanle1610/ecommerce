# frozen_string_literal: true

ActiveAdmin.register Size do
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
  permit_params :shoe_id, :sizenum
  form(html: { multipart: true }) do |f|
    f.inputs 'Size' do
      f.input :shoe_id, as: :select, collection: Shoe.select(id)
      f.input :sizenum
    end
    f.actions
  end
end
