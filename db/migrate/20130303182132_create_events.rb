class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.string :pname
      t.string :address
      t.string :state
      t.string :zipcode
      t.datetime :partystarttime
      t.datetime :partyendtime
      t.boolean :ladiesinfree
      t.datetime :guestlistcutofftime
      t.boolean :everybodyinfree
      t.datetime :everyfreeuntil
      t.boolean :industryevent
      t.boolean :celebappearance
      t.string :drinkspecials
      t.datetime :drinkspecialsuntil
      t.boolean :guestlist
      t.decimal :cost1 , :precision => 5, :scale => 2
      t.decimal :cost2, :precision => 5, :scale => 2
      t.timestamps
    end
  end
end
