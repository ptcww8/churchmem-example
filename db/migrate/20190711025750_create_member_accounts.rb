class CreateMemberAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :member_accounts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :date_of_birth
      t.string :gender
      t.text :address
      t.string :picture
      t.string :marital_status
      t.integer :user_id

      t.timestamps
    end
  end
end
