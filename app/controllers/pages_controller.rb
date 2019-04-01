class PagesController < ApplicationController
  def main
    if user_signed_in?
      @contributions = current_user.contributions
      @forms = current_user.forms
    end
  end
end
