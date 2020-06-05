class GameController < ApplicationController
  def index
  end

  def first
    @first = cookies["score"]
    @user = User.find_by(id: @current_user.id)
  end

  def second
  end

  def third
  end

  def fourth
  end

end
