ActiveAdmin.register Book do
  permit_params :title, :author, :genre, :price

  config.filters= false

  show do
    attributes_table do
      row :title
      row :author
      row :genre
      row :price
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :author
      f.input :genre
      f.input :price
    end
    f.actions
  end
end
