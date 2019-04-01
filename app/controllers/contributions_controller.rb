class ContributionsController < ApplicationController
  def index
    @contributions = current_user.contributions.all
  end
end
