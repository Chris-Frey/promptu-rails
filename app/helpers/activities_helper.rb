module ActivitiesHelper

  def show_activity_path(activity_id)
    "/activities/#{activity_id}"
  end

  def new_activity_path
    "/activities/new"
  end

  def index_activity_path
    "/activities"
  end

  def edit_activity_path(activity_id)
    "/activities/#{activity_id}/edit"
  end

  def attend_activity(activity)
    activity.update(attended_by: current_user.id)
    show_activity_path(activity.id)
  end

end
