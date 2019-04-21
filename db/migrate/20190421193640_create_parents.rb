class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :phone_1
      t.string :phone_2

      t.timestamps
    end
  end
end
