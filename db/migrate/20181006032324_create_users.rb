class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :age
      t.string :user_level
      t.references :teamcolor, foreign_key: true

      t.timestamps
    end
  end
end
