class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to @activity
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activity = Activity.delete(params[:id])

    if @activity
      redirect_to "/activities/"
    else
      render :delete, status: :unprocessable_entity
    end
  end

  private
    def activity_params
      params.require(:activity).permit(:name, :description, :user_id )
      # :start_time, :location, :attended_by, )
    end
end

