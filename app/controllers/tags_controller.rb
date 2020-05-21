class TagsController < ApplicationController

  def new
    @tag = Tag.new
    @tag.users << current_user
  end

  def create
    binding.pry
  end
  
end
