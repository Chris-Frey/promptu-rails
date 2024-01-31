module ActivitiesHelper
  def show_activity_path(activity_id)
    "/activities/#{activity_id}"
  end

  def new_activity_path
    "/activities/new"
  end
end
