ActiveAdmin.register Specialty do
  permit_params :name, :grade_level

  index do
    selectable_column
    id_column
    column :name
    column :grade_level
    actions
  end

  form  do |f|
    f.inputs do
      f.input :name
      f.input :grade_level, as: :select, collection: [I18n.t('models.specialty.grade_level_options.grade'),
                                                I18n.t('models.specialty.grade_level_options.postgraduate'),
                                                I18n.t('models.specialty.grade_level_options.technicature')]
    end
    f.actions
  end
end

