class BusinessPlansController < ApplicationController
  before_action :set_business_plan, only: [:show, :edit, :update, :destroy]

  # GET /business_plans
  # GET /business_plans.json
  def index
    @business_plans = BusinessPlan.all
  end

  # GET /business_plans/1
  # GET /business_plans/1.json
  def show
  end

  # GET /business_plans/new
  def new
    @business_plan = BusinessPlan.new
  end

  # GET /business_plans/1/edit
  def edit
  end

  # POST /business_plans
  # POST /business_plans.json
  def create
    @business_plan = BusinessPlan.new(business_plan_params)

    respond_to do |format|
      if @business_plan.save
        format.html { redirect_to @business_plan, notice: 'Business plan was successfully created.' }
        format.json { render :show, status: :created, location: @business_plan }
      else
        format.html { render :new }
        format.json { render json: @business_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_plans/1
  # PATCH/PUT /business_plans/1.json
  def update
    respond_to do |format|
      if @business_plan.update(business_plan_params)
        format.html { redirect_to @business_plan, notice: 'Business plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_plan }
      else
        format.html { render :edit }
        format.json { render json: @business_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_plans/1
  # DELETE /business_plans/1.json
  def destroy
    @business_plan.destroy
    respond_to do |format|
      format.html { redirect_to business_plans_url, notice: 'Business plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_plan
      @business_plan = BusinessPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_plan_params
      params.require(:business_plan).permit(:title, :ownership, :start_plan, :location, :organization_structure, :management_team, :team_gaps, :personnel_plan, :product_desc, :sourcing_and_fulfillment, :technology_used, :expansion_plan, :value_prop, :competitive_advantage, :positioning_statement, :pricing_strategy, :general_promo_strat, :distro_patterns, :sales_strat, :sales_programs, :strategic_partner, :milestone, :segmentation_strategy, :market_needs, :market_trends, :market_growth_potential, :industry_analysis, :industry_participants, :distro_patterns, :buying_patterns, :financial_assumptions, :financial_indicators, :pandl, :cash_flow, :balance_sheet, :long_term)
    end
end
