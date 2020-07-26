class UserController < ApplicationController
  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
  before_action :ensure_correct_user, {only: [:edit, :update]}

  def index
    @users = User.all.order(first: "DESC")
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user_image.png",
      password: params[:password],
      first: 0,
      second: 0,
      third: 0,
      fourth: 0)
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("user/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end

    if @user.save
      redirect_to("/user/#{@user.id}")
    else
      render("user/edit")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/game/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("user/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/login")
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      redirect_to("/")
    end
  end

  def save_first
    @user = User.find_by(id: @current_user.id)
    firstScore = params[:firstScore]
    @user.update(first: firstScore)

    logger.debug("================")
    logger.debug(firstScore)
    logger.debug("================")


    hitNum = params[:hitNum]
    logger.debug("================")
    logger.debug(hitNum)
    logger.debug("================")





    @hitNum = cookies["hitNum"]
    if hitNum.include?("1")
      @user.update(first_1: "1")
    end
    if hitNum.include?("2")
      @user.update(first_2: "2")
    end
    if hitNum.include?("3")
      @user.update(first_3: "3")
    end
    if hitNum.include?("4")
      @user.update(first_4: "4")
    end
    if hitNum.include?("5")
      @user.update(first_5: "5")
    end
    if hitNum.include?("6")
      @user.update(first_6: "6")
    end
    if hitNum.include?("7")
      @user.update(first_7: "7")
    end
    if hitNum.include?("8")
      @user.update(first_8: "8")
    end
    if hitNum.include?("9")
      @user.update(first_9: "9")
    end
    if hitNum.include?("10")
      @user.update(first_10: "10")
    end
    if hitNum.include?("11")
      @user.update(first_11: "11")
    end
    if hitNum.include?("12")
      @user.update(first_12: "12")
    end
    if hitNum.include?("13")
      @user.update(first_13: "13")
    end
    if hitNum.include?("14")
      @user.update(first_14: "14")
    end
    if hitNum.include?("15")
      @user.update(first_15: "15")
    end
    if hitNum.include?("16")
      @user.update(first_16: "16")
    end
    if hitNum.include?("17")
      @user.update(first_17: "17")
    end
    if hitNum.include?("18")
      @user.update(first_18: "18")
    end
    if hitNum.include?("19")
      @user.update(first_19: "19")
    end
    if hitNum.include?("20")
      @user.update(first_20: "20")
    end
    if hitNum.include?("21")
      @user.update(first_21: "21")
    end
    if hitNum.include?("22")
      @user.update(first_22: "22")
    end
    if hitNum.include?("23")
      @user.update(first_23: "23")
    end
    if hitNum.include?("24")
      @user.update(first_24: "24")
    end
    if hitNum.include?("25")
      @user.update(first_25: "25")
    end

    if @user.save
      redirect_to("/game/index")
    else
      render("/game/first")
    end

  end

  def save_second
    redirect_to("/game/index")
  end

  def save_third
    redirect_to("/game/index")
  end

  def save_fourth
    redirect_to("/game/index")
  end


end
