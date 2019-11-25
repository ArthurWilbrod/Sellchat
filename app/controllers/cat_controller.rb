class CatController < ApplicationController
  def index
    @cat_array = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

end