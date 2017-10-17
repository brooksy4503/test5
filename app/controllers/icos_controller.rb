class IcosController < ApplicationController
  before_action :set_ico, only: [:show, :edit, :update, :destroy]

  # GET /icos
  # GET /icos.json
  def index
    #@icos = Ico.all
    #@icos = Ico.page params[:page]
    @icos = Ico.page(params[:page]).per(10)
  end

  # GET /icos/1
  # GET /icos/1.json
  def show
  end

  # GET /icos/new
  def new
    @ico = Ico.new
    @idea_evaluation_types = Ico.idea_evaluation_types
    @team_evaluation_types = Ico.team_evaluation_types
    @advisors_evaluation_types = Ico.advisors_evaluation_types
    @alpha_beta_evaluation_types = Ico.alpha_beta_evaluation_types
    @token_metrics_evaluation_types = Ico.token_metrics_evaluation_types
    @platform_app_evaluation_types = Ico.platform_app_evaluation_types
    @website_evaluation_types = Ico.website_evaluation_types
    @github_evaluation_types = Ico.github_evaluation_types
    @social_evaluation_types = Ico.social_evaluation_types
    @bounty_evaluation_types = Ico.bounty_evaluation_types
    @celebrity_evaluation_types = Ico.celebrity_evaluation_types
  end

  # GET /icos/1/edit
  def edit

    @idea_evaluation_types = Ico.idea_evaluation_types
    @team_evaluation_types = Ico.team_evaluation_types
    @advisors_evaluation_types = Ico.advisors_evaluation_types
    @alpha_beta_evaluation_types = Ico.alpha_beta_evaluation_types
    @token_metrics_evaluation_types = Ico.token_metrics_evaluation_types
    @platform_app_evaluation_types = Ico.platform_app_evaluation_types
    @website_evaluation_types = Ico.website_evaluation_types
    @github_evaluation_types = Ico.github_evaluation_types
    @social_evaluation_types = Ico.social_evaluation_types
    @bounty_evaluation_types = Ico.bounty_evaluation_types
    @celebrity_evaluation_types = Ico.celebrity_evaluation_types
  end

  # POST /icos
  # POST /icos.json
  def create
    @ico = Ico.new(ico_params)

    @idea_evaluation_types = Ico.idea_evaluation_types
    @team_evaluation_types = Ico.team_evaluation_types
    @advisors_evaluation_types = Ico.advisors_evaluation_types
    @alpha_beta_evaluation_types = Ico.alpha_beta_evaluation_types
    @token_metrics_evaluation_types = Ico.token_metrics_evaluation_types
    @platform_app_evaluation_types = Ico.platform_app_evaluation_types
    @website_evaluation_types = Ico.website_evaluation_types
    @github_evaluation_types = Ico.github_evaluation_types
    @social_evaluation_types = Ico.social_evaluation_types
    @bounty_evaluation_types = Ico.bounty_evaluation_types
    @celebrity_evaluation_types = Ico.celebrity_evaluation_types

    respond_to do |format|
      if @ico.save
        format.html { redirect_to @ico, notice: 'Ico was successfully created.' }
        format.json { render :show, status: :created, location: @ico }
      else
         #byebug
        format.html { render :new }
         format.json { render json: @ico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icos/1
  # PATCH/PUT /icos/1.json
  def update
    respond_to do |format|

      @idea_evaluation_types = Ico.idea_evaluation_types
      @team_evaluation_types = Ico.team_evaluation_types
      @advisors_evaluation_types = Ico.advisors_evaluation_types
      @alpha_beta_evaluation_types = Ico.alpha_beta_evaluation_types
      @token_metrics_evaluation_types = Ico.token_metrics_evaluation_types
      @platform_app_evaluation_types = Ico.platform_app_evaluation_types
      @website_evaluation_types = Ico.website_evaluation_types
      @github_evaluation_types = Ico.github_evaluation_types
      @social_evaluation_types = Ico.social_evaluation_types
      @bounty_evaluation_types = Ico.bounty_evaluation_types
      @celebrity_evaluation_types = Ico.celebrity_evaluation_types

      if @ico.update(ico_params)
        format.html { redirect_to @ico, notice: 'Ico was successfully updated.' }
        format.json { render :show, status: :ok, location: @ico }
      else
        format.html { render :edit }
        format.json { render json: @ico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icos/1
  # DELETE /icos/1.json
  def destroy
    @ico.destroy
    respond_to do |format|
      format.html { redirect_to icos_url, notice: 'Ico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ico
      @ico = Ico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ico_params
      params.require(:ico).permit(:ico_ticker, :ico_name, :ico_rating, :idea_evalution_type, :team_evaluation_type, :advisors_evaluation_type, :alpha_beta_evaluation_type, :token_metrics_evaluation_type, :platform_app_evaluation_type, :website_evaluation_type, :github_evaluation_type, :social_evaluation_type, :bounty_evaluation_type, :celebrity_evaluation_type)

      # params.fetch(:ico {})
    end
end
