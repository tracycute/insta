class ProfilesController < ApplicationController
  def index
    @users = users
  end
  def users
    query = User.ransack(username_cont: search_query)
    @users = query.result(distinct: true)
  end
  def search_query
    params[:query]
  end
end
