module FormHelper
  def current_user(form)
    @forms = current_user.forms
  end

  def contribution_sum(form)
    form.contributions.sum :amount
  end
end
