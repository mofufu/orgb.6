require 'test_helper'

class MarketingPlansControllerTest < ActionController::TestCase
  setup do
    @marketing_plan = marketing_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marketing_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marketing_plan" do
    assert_difference('MarketingPlan.count') do
      post :create, marketing_plan: { appendix_additional: @marketing_plan.appendix_additional, buyer_profile_id: @marketing_plan.buyer_profile_id, distro_channels: @marketing_plan.distro_channels, end_date: @marketing_plan.end_date, estimated_budget: @marketing_plan.estimated_budget, implementation_team: @marketing_plan.implementation_team, media_strat: @marketing_plan.media_strat, milestone_of_completion: @marketing_plan.milestone_of_completion, monitor_method: @marketing_plan.monitor_method, objective: @marketing_plan.objective, outcomes: @marketing_plan.outcomes, plan_desc: @marketing_plan.plan_desc, start_date: @marketing_plan.start_date, success_indicator: @marketing_plan.success_indicator, title: @marketing_plan.title, type_of_activity: @marketing_plan.type_of_activity, value_proposition: @marketing_plan.value_proposition }
    end

    assert_redirected_to marketing_plan_path(assigns(:marketing_plan))
  end

  test "should show marketing_plan" do
    get :show, id: @marketing_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marketing_plan
    assert_response :success
  end

  test "should update marketing_plan" do
    patch :update, id: @marketing_plan, marketing_plan: { appendix_additional: @marketing_plan.appendix_additional, buyer_profile_id: @marketing_plan.buyer_profile_id, distro_channels: @marketing_plan.distro_channels, end_date: @marketing_plan.end_date, estimated_budget: @marketing_plan.estimated_budget, implementation_team: @marketing_plan.implementation_team, media_strat: @marketing_plan.media_strat, milestone_of_completion: @marketing_plan.milestone_of_completion, monitor_method: @marketing_plan.monitor_method, objective: @marketing_plan.objective, outcomes: @marketing_plan.outcomes, plan_desc: @marketing_plan.plan_desc, start_date: @marketing_plan.start_date, success_indicator: @marketing_plan.success_indicator, title: @marketing_plan.title, type_of_activity: @marketing_plan.type_of_activity, value_proposition: @marketing_plan.value_proposition }
    assert_redirected_to marketing_plan_path(assigns(:marketing_plan))
  end

  test "should destroy marketing_plan" do
    assert_difference('MarketingPlan.count', -1) do
      delete :destroy, id: @marketing_plan
    end

    assert_redirected_to marketing_plans_path
  end
end
