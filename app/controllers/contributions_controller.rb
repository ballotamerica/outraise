class ContributionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_form, only: [:destroy]

  def index
    @contributions = current_user.contributions.all
  end

  def destroy
      if @contributions.destroy && @contributions.present?
          flash[:notice] = "Contribution was removed!"
          redirect_to contributions_path
      else
          flash[:notice] = "Contribution no longer exists! May have been deleted already."
          redirect_to contributions_path
      end
  end
end
