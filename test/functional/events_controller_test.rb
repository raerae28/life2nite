require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { address: @event.address, celebappearance: @event.celebappearance, cost1: @event.cost1, cost2: @event.cost2, description: @event.description, drinkspecials: @event.drinkspecials, drinkspecialsuntil: @event.drinkspecialsuntil, everybodyinfree: @event.everybodyinfree, everyfreeuntil: @event.everyfreeuntil, guestlist: @event.guestlist, guestlistcutofftime: @event.guestlistcutofftime, industryevent: @event.industryevent, ladiesinfree: @event.ladiesinfree, partyendtime: @event.partyendtime, partystarttime: @event.partystarttime, pname: @event.pname, state: @event.state, zipcode: @event.zipcode }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { address: @event.address, celebappearance: @event.celebappearance, cost1: @event.cost1, cost2: @event.cost2, description: @event.description, drinkspecials: @event.drinkspecials, drinkspecialsuntil: @event.drinkspecialsuntil, everybodyinfree: @event.everybodyinfree, everyfreeuntil: @event.everyfreeuntil, guestlist: @event.guestlist, guestlistcutofftime: @event.guestlistcutofftime, industryevent: @event.industryevent, ladiesinfree: @event.ladiesinfree, partyendtime: @event.partyendtime, partystarttime: @event.partystarttime, pname: @event.pname, state: @event.state, zipcode: @event.zipcode }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
