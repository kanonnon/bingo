class GameController < ApplicationController
  def index
  end


  def first
    @hitNum = cookies["hitNum"]
    @user = User.find_by(id: @current_user.id)
    gon.first_1 = @current_user.first_1
    gon.first_2 = @current_user.first_2
    gon.first_3 = @current_user.first_3
    gon.first_4 = @current_user.first_4
    gon.first_5 = @current_user.first_5
    gon.first_6 = @current_user.first_6
    gon.first_7 = @current_user.first_7
    gon.first_8 = @current_user.first_8
    gon.first_9 = @current_user.first_9
    gon.first_10 = @current_user.first_10
    gon.first_11 = @current_user.first_11
    gon.first_12 = @current_user.first_12
    gon.first_13 = @current_user.first_13
    gon.first_14 = @current_user.first_14
    gon.first_15 = @current_user.first_15
    gon.first_16 = @current_user.first_16
    gon.first_17 = @current_user.first_17
    gon.first_18 = @current_user.first_18
    gon.first_19 = @current_user.first_19
    gon.first_20 = @current_user.first_20
    gon.first_21 = @current_user.first_21
    gon.first_22 = @current_user.first_22
    gon.first_23 = @current_user.first_23
    gon.first_24 = @current_user.first_24
    gon.first_25 = @current_user.first_25
  end

  def second
  end

  def third
  end

  def fourth
  end

end
