ActiveAdmin.register Client do
  menu priority: 4

  actions :all, except: [:new, :create, :edit, :destroy, :show ]
  index do
    column :first_name
    column :last_name
    column :email
  end
end
