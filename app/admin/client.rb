ActiveAdmin.register Client do
  actions :all, except: [:new, :create, :edit, :destroy, :show ]
  index do
    column :first_name
    column :last_name
    column :email
  end
end
