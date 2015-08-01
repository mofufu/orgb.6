class CreateBusinessPlans < ActiveRecord::Migration
  def change
    create_table :business_plans do |t|
      t.string :title
      t.string :ownership
      t.text :start_plan
      t.text :location
      t.text :organization_structure
      t.text :management_team
      t.text :team_gaps
      t.text :personnel_plan
      t.text :product_desc
      t.text :sourcing_and_fulfillment
      t.text :technology_used
      t.text :expansion_plan
      t.text :value_prop
      t.text :competitive_advantage
      t.text :positioning_statement
      t.text :pricing_strategy
      t.text :general_promo_strat
      t.text :distro_patterns
      t.text :sales_strat
      t.text :sales_programs
      t.text :strategic_partner
      t.text :milestone
      t.text :segmentation_strategy
      t.text :market_needs
      t.text :market_trends
      t.text :market_growth_potential
      t.text :industry_analysis
      t.text :industry_participants
      t.text :distro_patterns
      t.text :buying_patterns
      t.text :financial_assumptions
      t.text :financial_indicators
      t.text :pandl
      t.text :cash_flow
      t.text :balance_sheet
      t.text :long_term

      t.timestamps
    end
  end
end
