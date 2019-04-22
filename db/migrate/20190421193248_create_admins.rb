class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
