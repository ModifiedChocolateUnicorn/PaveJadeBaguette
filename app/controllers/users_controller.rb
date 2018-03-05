class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    if session[:user_id] != nil && session[:user_id] == @user.id
    elsif session[:user_id] == nil || @current_user.role != 'admin'
      flash[:notice] = "You've got to connect first to see your profile ;) !"
      redirect_to users_url
    else
    end
  end


  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    if session[:user_id] != nil && session[:user_id] == @user.id
    elsif session[:user_id] == nil || @current_user.role != 'admin'
      flash[:notice] = "You've got to connect first to edit your profile !"
      redirect_to users_url
    else
    end
  end

  # POST /users
  # POST /users.json
  def create
    # checking if role is empty or not
    if user_params[:role] == '' || user_params[:role] == nil
      @user = User.new(user_params.merge!(role: 'user'))
    else
    @user = User.new(user_params)
    end

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url, notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if session[:user_id] != nil && session[:user_id] = @user.id || @current_user.role == 'admin'
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      end
    else
    end
  end

  def login
  end

  # this action checks wether the information provided when logging in does match with something in the database
  def login_check
    @current_user = User.where(name: params[:name], pwd: params[:pwd]).first
    if @current_user
      session[:user_id] = @current_user.id
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:invalid_login] = "Nope, not the good combo !"
      redirect_to "/users/login"
    end
  end

  def logout
    session[:user_id] = nil
      redirect_to "/users"
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :pwd, :email, :role)
    end
end
