ActiveAdmin.register Project do
  permit_params :title, :abstract, :authors, :date, :subject_id, :revision_state

  index do
    selectable_column
    id_column
    column :title
    column :subject
    column :revision_state do |state|
      enum_l(state, :revision_state)
    end
    actions
  end

  form  do |f|
    f.inputs do
      f.input :revision_state, as: :select, collection: enum_options_for_select(Project, :revision_state), include_blank: false
      f.input :subject
      f.input :title
      f.input :abstract
      f.input :authors
      f.input :date, as: :datepicker, :html_option => { value: Date.today }
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :abstract
      row :authors
      row :date
      row :subject
      row :specialty
      row :revision_state do
        enum_l(project, :revision_state)
      end
      row :created_at
      row :updated_at
    end
  end
end
