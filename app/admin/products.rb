ActiveAdmin.register Product do
  menu :priority => 2
  permit_params :title, :description,:author,:price, :featured, :available_on,:image_file_name

  index do
    column :image_path do |product|
      image_tag product.image_path
    end

    column :title do |product|
      link_to product.title, admin_product_path(product)
    end

    column :author
  end
  # note: the Product model has a computed property `image_path`
  # that has the correct path for use in the UI
end
