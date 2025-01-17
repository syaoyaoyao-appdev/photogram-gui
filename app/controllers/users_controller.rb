class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })
    @the_user = matching_usernames.first

    if the_user = nil
      redict_to("/404")
    else
      render({ :template => "user_templates/show.html.erb" })
    end
  end

  def insert_user
    username = params.fetch("input_username")
    a_user = User.new

    a_user.username = username

    a_user.save

    redirect_to("/users/" + a_user.username.to_s)
  end

  def update_user
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })
    the_user = matching_usernames.first

    new_username = params.fetch("input_username")
    the_user.username = new_username

    the_user.save

    redirect_to("/users/" + the_user.username.to_s)
  end
end
