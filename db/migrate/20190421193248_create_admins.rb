class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :second_name
      # commented out for devise integration
      # t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
