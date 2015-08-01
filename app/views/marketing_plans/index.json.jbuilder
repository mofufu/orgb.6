json.array!(@marketing_plans) do |marketing_plan|
  json.extract! marketing_plan, :id, :buyer_profile_id, :title, :value_proposition, :objective, :plan_desc, :type_of_activity, :start_date, :end_date, :implementation_team, :estimated_budget, :media_strat, :distro_channels, :milestone_of_completion, :success_indicator, :monitor_method, :outcomes, :appendix_additional
  json.url marketing_plan_url(marketing_plan, format: :json)
end
