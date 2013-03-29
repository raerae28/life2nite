class Event < ActiveRecord::Base
  attr_accessible :address, :city, :celebappearance, :cost1, :cost2, :description, :drinkspecials, :drinkspecialsuntil, :everybodyinfree, :everyfreeuntil, :guestlist, :guestlistcutofftime, :industryevent, :ladiesinfree, :partyendtime, :partystarttime, :pname, :state, :zipcode
end
