class PagesController < ApplicationController
  def salut
    @name = params[:name]
    if @name == nil
      @v = 1
    else
      @v = 0
    end
  end

  def home
  end
end
