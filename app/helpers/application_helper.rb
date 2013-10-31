module ApplicationHelper
  def authentication_menu
    #built a list of links depending on the users permissions
    links = ""
    if @authenticated.present?
      links += "<li> #{link_to('Edit Profile', edit_users_path )}</li>" +
      links += "<li> #{link_to('Logout ' + @authenticated.username, user_login_path, :method => 'delete', :confirm => 'Are you sure?')}</li>"
    elsif @company_authenticated.present?
      links += "<li> #{link_to(@company_authenticated.name + ' Profile', company_path(@company_authenticated))}</li>" +
      links += "<li> #{link_to('+ New Product', new_product_path)}</li>" +
      links += "<li> #{link_to('Logout ' + @company_authenticated.name, company_login_path, :method => 'delete', :confirm => 'You are about to Logout. Do you wish to continue?')}</li>"
    else
      links += "<li> #{link_to('Create Account', new_user_path)}</li>" +
      links += "<li> #{link_to('User Login', user_login_path)}</li>" +
      links += "<li> #{link_to('Company Login', company_login_path)}</li>"
    end

    links
  end

  def edit_product_menu
    links = ""
    if @company_authenticated.present? && @company_authenticated.id == @product.company_id
      #links to edit and delete product
      links += "#{link_to('Edit', edit_product_path(@product))}" +
      links += "#{button_to('Delete', @product, :method => 'delete')}" +

      #links to add question or see user feed back
      links += "#{link_to('Add a Question', new_question_path(:product_id => @product.id))}<br/>" +
      links += "#{link_to('See User Feedback', show_answers_path(@product))}"

    end
  end
end
