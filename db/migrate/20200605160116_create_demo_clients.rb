class CreateDemoClients < ActiveRecord::Migration[5.2]
  def change
    create_table :demo_clients do |t|
      t.string :company
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.text :message
      t.string :method

      t.timestamps
    end
  end
end
