ActiveAdmin.register Administrator do
  index do
    column :first_name
    column :last_name
    default_actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
    end
  end
end
