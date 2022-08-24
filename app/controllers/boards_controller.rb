class BoardsController < ApplicationController

  def index
    @boards = Board.all.includes(:user).order(created: :desc)
  end
end
