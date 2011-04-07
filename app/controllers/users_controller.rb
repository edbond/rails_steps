class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new :step => '1'

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    if @user.valid?
      if params[:next_step] == 'end'
        @user.save
        redirect_to :action => 'index'
      else
        @user.step = params[:next_step]
        render :action => 'new'
      end
    else
      render :action => 'new'
    end
  end
end
