ActiveAdmin.register Book do
  permit_params :title, :author, :genre, :price, :category_id

  config.filters= false

  show do
    attributes_table do
      row :title
      row :author
      row :genre
      row :price
      row :category_id
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :author
      f.input :genre
      f.input :price
      f.input :category_id
    end
    f.actions
  end
end
