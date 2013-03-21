ActiveAdmin.register Description do
  index do
    column :description
    column :created_at
    default_actions
  end
  form do |form|
    form.text_area :description
  end
end
