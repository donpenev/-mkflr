class CreateTocontacts < ActiveRecord::Migration[5.2]
  def change
    create_table :tocontacts do |t|
      t.string :email

      t.timestamps
    end
  end
end
