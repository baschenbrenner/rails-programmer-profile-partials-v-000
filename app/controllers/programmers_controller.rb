class ProgrammersController < ApplicationController
  def index
    @programmers = Programmer.all
  end

  def show
    @programmer = Programmer.find(params[:id])
    @attributes = @programmer.attributes
    @keys = @attributes.keys.slice(2,3)
  end
end
