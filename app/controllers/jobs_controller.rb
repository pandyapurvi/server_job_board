class JobsController < ApplicationController

  def index
    @jobs = Job.all
    respond_to do |format|
      format.html
      format.json { render :json => @jobs }
    end

  end

  def show
    @job = Job.find params[:id]
    respond_to do |format|
      format.html
      format.json { render :json => @job }
    end

  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create job_params
    respond_to do |format|
      if @job.save
        format.html { redirect_to @job }
        format.json { render :json => @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors }
      end
    end
    # redirect_to jobs_path
  end

  def edit
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
    respond_to do |format|
      if job.update job_params
        format.html { redirect_to @job }
        format.json { render :json => @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors}
      end
    end

    # redirect_to job_path
  end

  def destroy
    job = Job.find params[:id]
    job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_path }#seelers_url?
    format.json { head :no_content }
    end
    # redirect_to jobs_path
  end
  private
  def job_params
    params.require(:job).permit(:title,:post_date,:description,:level,:company_type, :salary, :job_type, :close_date,:city, :user_id)
  end
end
