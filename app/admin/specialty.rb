ActiveAdmin.register Specialty do
  permit_params :name, :grade_level

  index do
    selectable_column
    id_column
    column :name
    column :grade_level do |specialty|
      enum_l(specialty, :grade_level)
    end
    actions
  end

  form  do |f|
    f.inputs do
      f.input :name
      f.input :grade_level, as: :select, collection: enum_options_for_select(Specialty, :grade_level), include_blank: false
    end
    f.actions
  end

  show do
    tabs do
      tab I18n.t "details" do
        attributes_table do
          row :name
          row :grade_level do
            enum_l(specialty, :grade_level)
          end
          row :created_at
          row :updated_at
        end
      end

      tab I18n.t "activerecord.models.subject.other" do
        table_for specialty.subjects do
          column :name
          column :department do |subject|
            enum_l(subject, :department)
          end
          column :created_at
          column :updated_at
        end
      end
    end
  end
end

