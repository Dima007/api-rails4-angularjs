ActiveAdmin.register Therapist do
  actions :all, except: [:show ]

  permit_params :first_name, :last_name, :email, :password_digest, :password_salt

  index do
    column :first_name
    column :last_name
    column :email

    actions
  end
end
