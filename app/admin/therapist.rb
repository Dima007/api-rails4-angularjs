ActiveAdmin.register Therapist do
  form do |f|
    f.inputs do
      f.input :first_name,              label: "Name"
      f.input :last_name,               label: "Surname"
      f.input :email,                   label: "e-mail"
      f.input :password,                label: "Password"
      f.input :password_confirmation,   label: "Confirm password"
    end
    f.buttons
  end

  controller do
    def permit_params
      params.require(:therapist => [:first_name, :last_name, :email, :password])
    end
  end

  index do
    column :first_name
    column :last_name
    column :email

    default_actions
  end
end
