json.array!(@business_plans) do |business_plan|
  json.extract! business_plan, :id, :title, :ownership, :start_plan, :location, :organization_structure, :management_team, :team_gaps, :personnel_plan, :product_desc, :sourcing_and_fulfillment, :technology_used, :expansion_plan, :value_prop, :competitive_advantage, :positioning_statement, :pricing_strategy, :general_promo_strat, :distro_patterns, :sales_strat, :sales_programs, :strategic_partner, :milestone, :segmentation_strategy, :market_needs, :market_trends, :market_growth_potential, :industry_analysis, :industry_participants, :distro_patterns, :buying_patterns, :financial_assumptions, :financial_indicators, :pandl, :cash_flow, :balance_sheet, :long_term
  json.url business_plan_url(business_plan, format: :json)
end
