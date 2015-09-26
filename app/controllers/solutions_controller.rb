class SolutionsController < ApplicationController

  def new
  end

  def create
    @solution = Matcher.new(Host.first, Guest.all).match
    redirect_to solutions_path
  end

  def index
    @solutions = Solution.all
  end

end
