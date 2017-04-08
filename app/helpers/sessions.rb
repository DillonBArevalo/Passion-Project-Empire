helpers do
  def logged_in?
    if session[:id]
      true
    else
      false
    end
  end

  def current_user
    User.find(session[:id])
  end

  def current_user?(user)
    if logged_in?
      user == current_user
    else
      false
    end
  end
end
