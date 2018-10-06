class CreateTeamcolors < ActiveRecord::Migration[5.2]
  def change
    create_table :teamcolors do |t|
      t.string :color

      t.timestamps
    end
  end
end
