require 'test_helper'

class BusinessPlansControllerTest < ActionController::TestCase
  setup do
    @business_plan = business_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_plan" do
    assert_difference('BusinessPlan.count') do
      post :create, business_plan: { balance_sheet: @business_plan.balance_sheet, buying_patterns: @business_plan.buying_patterns, cash_flow: @business_plan.cash_flow, competitive_advantage: @business_plan.competitive_advantage, distro_patterns: @business_plan.distro_patterns, distro_patterns: @business_plan.distro_patterns, expansion_plan: @business_plan.expansion_plan, financial_assumptions: @business_plan.financial_assumptions, financial_indicators: @business_plan.financial_indicators, general_promo_strat: @business_plan.general_promo_strat, industry_analysis: @business_plan.industry_analysis, industry_participants: @business_plan.industry_participants, location: @business_plan.location, long_term: @business_plan.long_term, management_team: @business_plan.management_team, market_growth_potential: @business_plan.market_growth_potential, market_needs: @business_plan.market_needs, market_trends: @business_plan.market_trends, milestone: @business_plan.milestone, organization_structure: @business_plan.organization_structure, ownership: @business_plan.ownership, pandl: @business_plan.pandl, personnel_plan: @business_plan.personnel_plan, positioning_statement: @business_plan.positioning_statement, pricing_strategy: @business_plan.pricing_strategy, product_desc: @business_plan.product_desc, sales_programs: @business_plan.sales_programs, sales_strat: @business_plan.sales_strat, segmentation_strategy: @business_plan.segmentation_strategy, sourcing_and_fulfillment: @business_plan.sourcing_and_fulfillment, start_plan: @business_plan.start_plan, strategic_partner: @business_plan.strategic_partner, team_gaps: @business_plan.team_gaps, technology_used: @business_plan.technology_used, title: @business_plan.title, value_prop: @business_plan.value_prop }
    end

    assert_redirected_to business_plan_path(assigns(:business_plan))
  end

  test "should show business_plan" do
    get :show, id: @business_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_plan
    assert_response :success
  end

  test "should update business_plan" do
    patch :update, id: @business_plan, business_plan: { balance_sheet: @business_plan.balance_sheet, buying_patterns: @business_plan.buying_patterns, cash_flow: @business_plan.cash_flow, competitive_advantage: @business_plan.competitive_advantage, distro_patterns: @business_plan.distro_patterns, distro_patterns: @business_plan.distro_patterns, expansion_plan: @business_plan.expansion_plan, financial_assumptions: @business_plan.financial_assumptions, financial_indicators: @business_plan.financial_indicators, general_promo_strat: @business_plan.general_promo_strat, industry_analysis: @business_plan.industry_analysis, industry_participants: @business_plan.industry_participants, location: @business_plan.location, long_term: @business_plan.long_term, management_team: @business_plan.management_team, market_growth_potential: @business_plan.market_growth_potential, market_needs: @business_plan.market_needs, market_trends: @business_plan.market_trends, milestone: @business_plan.milestone, organization_structure: @business_plan.organization_structure, ownership: @business_plan.ownership, pandl: @business_plan.pandl, personnel_plan: @business_plan.personnel_plan, positioning_statement: @business_plan.positioning_statement, pricing_strategy: @business_plan.pricing_strategy, product_desc: @business_plan.product_desc, sales_programs: @business_plan.sales_programs, sales_strat: @business_plan.sales_strat, segmentation_strategy: @business_plan.segmentation_strategy, sourcing_and_fulfillment: @business_plan.sourcing_and_fulfillment, start_plan: @business_plan.start_plan, strategic_partner: @business_plan.strategic_partner, team_gaps: @business_plan.team_gaps, technology_used: @business_plan.technology_used, title: @business_plan.title, value_prop: @business_plan.value_prop }
    assert_redirected_to business_plan_path(assigns(:business_plan))
  end

  test "should destroy business_plan" do
    assert_difference('BusinessPlan.count', -1) do
      delete :destroy, id: @business_plan
    end

    assert_redirected_to business_plans_path
  end
end
