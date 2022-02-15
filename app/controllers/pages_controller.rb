class PagesController < ApplicationController
  def my_account
  end

  def blog
  end

  def faq
    render layout: "faq"
  end

  def terms_and_policies
  end

  def about_us
  end

  def contact_us
    render layout: "contact_us"
  end
end
