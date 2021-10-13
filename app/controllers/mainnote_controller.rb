class MainnoteController < ApplicationController
  before_action :authenticate_user!

  def top
    @mainnote = Mainnote.all
    render layout: false 
  end

  def show
    @mainnote = Mainnote.find(params[:id])
    @user_mainnote= User.where(id: @mainnote.user_id)
    @notecomment = Notecomment.where(mainnote_id: @mainnote.id)
  end

  def new
    @mainnote = Mainnote.new
  end
  
  def create
    @mainnote = Mainnote.new(mainnote_params)

    if @mainnote.save
      redirect_to @mainnote
    else
      render :new
    end
  end

  def edit
    @mainnote = Mainnote.find(params[:id])
    unless @mainnote.user_id == current_user.id
      redirect_to  @mainnote
    end
  end

  def update
    @mainnote = Mainnote.find(params[:id])
    if @mainnote.user_id != current_user.id
      redirect_to  @mainnote
    else
      if @mainnote.update(mainnote_params)
        redirect_to @mainnote
      else
        render :edit
      end
    end  
  end

  def destroy
    @mainnote = Mainnote.find(params[:id])
    if @mainnote.user_id != current_user.id
      redirect_to  @mainnote
    else
      @mainnote.destroy
      redirect_to root_path
    end
  end

  def mypage
    @mainnote = Mainnote.where(user_id: current_user.id)
    @notecomment = Notecomment.where(mainnote_id: @mainnote.ids)
  end

  def usershow
    @user = User.all
    render layout: false 
  end

  def userpg
      @user = User.find(params[:id])
      @mainnote = Mainnote.where(user_id: @user.id)
      @notecomment = Notecomment.where(mainnote_id: @mainnote.ids)
      render layout: false 
  end
  
  private
    def mainnote_params
      params.require(:mainnote).permit(:user_id, :text, :title, :image1, :image2, :image3)
    end


end
