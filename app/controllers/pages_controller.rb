class PagesController < ApplicationController
  def main
    if user_signed_in?
      @contributions = current_user.contributions.all
      @forms = current_user.forms.all
    end
  end
end
