ActiveAdmin.register Word do
	permit_params Word.attribute_names.map(&:to_sym)

  form do |f|
    f.object.word_string ||= SecureRandom.hex(rand(10..30))

    f.inputs do
      f.input :word_string
    end
    f.actions
  end

  before_create do |resource|
    resource.admin_user = current_admin_user
  end
end