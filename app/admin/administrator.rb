ActiveAdmin.register Administrator do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation
  index do
    column :first_name
    column :last_name
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
    end
  end

  form do |f|
    f.inputs do
      f.input :first_name, label: "Name"
      f.input :last_name, label: "Surname"
      f.input :email, label: "e-mail"
      f.input :password, label: "Paswword"
      f.input :password_confirmation, label: "Confirm password"
    end
    f.actions
  end
end
