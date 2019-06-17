ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Words" do
          table_for Word.last(50) do 
            column("Word") { |word| link_to(word.word_string, admin_word_path(word)) }
            column("User") { |word| link_to(word.admin_user.email, admin_admin_user_path(word.admin_user)) }
          end
        end
      end
    end
  end
end
