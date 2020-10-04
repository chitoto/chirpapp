module ChirpsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_chirps_path
    elsif action_name == 'edit'
      chirp_path
    end
  end
end
