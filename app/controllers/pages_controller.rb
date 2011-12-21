class PagesController < ApplicationController
  def home
    @title = t :home
  end

  def advt
    @title = t :advt
  end
end
