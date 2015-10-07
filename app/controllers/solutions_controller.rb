class SolutionsController < ApplicationController

  def create
    Arrangement.make
  end
end
