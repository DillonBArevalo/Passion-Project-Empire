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
end
