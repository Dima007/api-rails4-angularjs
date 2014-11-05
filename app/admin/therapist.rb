ActiveAdmin.register Therapist do
  actions :all, except: [:show ]
  index do
    column :first_name
    column :last_name
    column :email

    actions
  end
end
