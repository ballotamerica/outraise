module FormHelper
  def current_user(form)
    @forms = current_user.forms
  end

  def contribution_sum(form)
    @forms.sum :amount
  end
end
