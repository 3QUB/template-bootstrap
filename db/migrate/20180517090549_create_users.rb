class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :newsletter
      t.string :unsubscribe_token
      t.timestamps
    end
  end
end
