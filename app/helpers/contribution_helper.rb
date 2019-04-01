module ContributionHelper
  def current_user(contribution)
    @contributions = current_user.contributions
  end

  def sum(contribution)
    @contributions.sum :amount
  end

  def count(contribution)
    @contributions.count
  end

  def views(contribution)
    ( @contributions.count )
  end

  def conversion(contribution)
    #Correct math to divide Contribution count from Form views -- Below math is wrong
    (count(@contribution).to_f / views(@contribution).to_f * 100)
  end
end
