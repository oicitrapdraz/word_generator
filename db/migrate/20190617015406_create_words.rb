class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :word_string
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
