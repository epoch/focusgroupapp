module ApplicationHelper
  def authentication_menu
    #built a list of links depending on the users permissions
    links = ""
    if @authenticated.present?
      links += "<li> #{link_to('Edit Profile', edit_users_path )}</li>" +
      links += "<li> #{link_to('Logout ' + @authenticated.username, user_login_path, :method => 'delete', :confirm => 'Are you sure?')}</li>"
    else
      links += "<li> #{link_to('Create Account', new_user_path)}</li>" +
      links += "<li> #{link_to('Login', user_login_path)}</li>"
    end

    links
  end
end
