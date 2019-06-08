class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
    respond_to do |format|
      format.html
      format.json { render :json => @applications }
    end

  end

  def show
    @application = Application.find params[:id]
    respond_to do |format|
      format.html
      format.json { render :json => @application }
    end

  end

  def new
    @application = Application.new
  end

  def create
    application = Application.create application_params
    respond_to do |format|
      if @application.save
        format.html { redirect_to @application }
        format.json { render :json => @application }
      else
        format.html { render :new }
        format.json { render json: @application.errors }
      end
    end
    # redirect_to jobs_path
  end

  def edit
    @application = Application.find params[:id]
  end

  def update
    application = Application.find params[:id]
    respond_to do |format|
      if application.update application_params
        format.html { redirect_to @application }
        format.json { render :json => @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors}
      end
    end

    # redirect_to job_path
  end

  def destroy
    application = Application.find params[:id]
    application.destroy
    respond_to do |format|
      format.html { redirect_to applications_path }#seelers_url?
    format.json { head :no_content }
    end
    # redirect_to jobs_path
  end
  private
  def application_params
    params.require(:application).permit(:resume,:application_date,:cover_letter,:job_id, :user_id)
  end
end
