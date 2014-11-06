ActiveAdmin.register Therapist do
  actions :all, except: [:show ]

  permit_params :first_name, :last_name, :email, :skype_username, :password, :password_confirmation

  index do
    column :first_name
    column :last_name
    column :email

    actions
  end

  form do |f|
    f.inputs do
      f.input :first_name, label: "Name"
      f.input :last_name, label: "Surname"
      f.input :email, label: "e-mail"
      f.input :skype_username, label: "Skype name"
      f.input :password, label: "Password"
      f.input :password_confirmation, label: "Confirm Password"
    end
    f.actions
  end
end
