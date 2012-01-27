module ApplicationHelper
  # Return a title on a per-page basis
  def title
    base_title = t :base_title
    if not(@company.nil?)
      @company.pagetitle
    elsif @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Domanti", :class => "logo")
  end
end
