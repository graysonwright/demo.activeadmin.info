ActiveAdmin.register Product do
  menu :priority => 2
  permit_params :title, :description,:author,:price, :featured, :available_on,:image_file_name

  # note: the Product model has a computed property `image_path`
  # that has the correct path for use in the UI

  index as: :grid do |product|
    div do
      a href: admin_product_path(product) do
        image_tag product.image_path
      end
    end
    a truncate(product.title), href: admin_product_path(product)
  end
end
