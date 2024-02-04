class ActivitiesController < ApplicationController
  before_action :authenticate_user!
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
    @activity = Activity.new(activity_params.merge(user_id: current_user.id))
    if @activity.save
      user_activity = UserActivity.new(user: current_user, activity: @activity)
      if user_activity.save
        redirect_to @activity
      else
        render :new, status: :unprocessable_entity
      end
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
    @activity = Activity.find(params[:id])

    if @activity.user_activities.destroy_all && @activity.destroy
      redirect_to "/activities/"
    else
      render :delete, status: :unprocessable_entity
    end
  end

  private
    def activity_params
      params.require(:activity).permit(:name, :description, :user_id, :attended_by, :start_time )
    end
end

