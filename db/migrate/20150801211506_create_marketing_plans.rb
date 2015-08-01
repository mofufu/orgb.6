class CreateMarketingPlans < ActiveRecord::Migration
  def change
    create_table :marketing_plans do |t|
      t.references :buyer_profile, index: true
      t.string :title
      t.text :value_proposition
      t.text :objective
      t.text :plan_desc
      t.text :type_of_activity
      t.date :start_date
      t.date :end_date
      t.text :implementation_team
      t.text :estimated_budget
      t.text :media_strat
      t.text :distro_channels
      t.text :milestone_of_completion
      t.text :success_indicator
      t.text :monitor_method
      t.text :outcomes
      t.text :appendix_additional

      t.timestamps
    end
  end
end
