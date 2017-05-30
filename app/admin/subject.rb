ActiveAdmin.register Subject do
  permit_params :name, :specialty_id, :department

  index do
    selectable_column
    id_column
    column :name
    column :specialty
    actions
  end

  form  do |f|
    f.inputs do
      f.input :name
      f.input :specialty, include_blank: false
      f.input :department, as: :select, collection: enum_options_for_select(Subject, :department), include_blank: false
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :department do
        enum_l(subject, :department)
      end
      row :specialty
      row :created_at
      row :updated_at
    end
  end
end
