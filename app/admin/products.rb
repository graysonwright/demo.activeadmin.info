ActiveAdmin.register Product do
  menu :priority => 2
  permit_params :title, :description,:author,:price, :featured, :available_on,:image_file_name

  # note: the Product model has a computed property `image_path`
  # that has the correct path for use in the UI
end
