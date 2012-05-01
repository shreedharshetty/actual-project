class CreateDonators < ActiveRecord::Migration
  def change
    create_table :donators do |t|
      t.string :email
      t.integer :pno
      t.string :address

      t.timestamps
    end
  end
end
