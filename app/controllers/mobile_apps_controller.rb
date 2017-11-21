class MobileAppsController < ApplicationController

  before_action :require_authenticated_user
  before_action :find_store
  before_action :find_mobile_app, only: [:show, :update]
  before_action :check_stats_permissions

  def index
    @apps = MobileAppsService.all
    respond_to do |format|
      format.json { render @apps }
    end
  end

  def show
    respond_to do |format|
      format.json { render @app }
    end
  end

  def create
    @app = MobileAppsService.new(@store).new_app(params[:mobile_app])
    respond_to do |format|
      if @app.save
        format.json { render :show, status: :created, location: @app }
      else
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @app.update_attributes(params[:mobile_app])
        format.json { render :show, status: :ok, location: @app }
      else
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_store
    @store = Store.find_by(id: params[:store_id])
    render_access_forbidden unless @store
  end

  def check_stats_permissions
    render_access_forbidden unless current_user.has_permissions?(@store)
  end

  def find_mobile_app
    @app = MobileApp.find_by(id: params[:id])
    render_not_found unless @app
  end
end
