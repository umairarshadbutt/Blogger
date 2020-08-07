class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tag = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.notice = "Tag #{@tag.name} deleted!"
    redirect_to articles_path
  end
end