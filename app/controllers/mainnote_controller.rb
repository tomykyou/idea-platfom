class MainnoteController < ApplicationController
  before_action :authenticate_user!
  #一覧ページで全てのデータを取り出す。
  def top
    @mainnote = Mainnote.all
    render layout: false 
  end

  #idと一致するものを取ってくる。
  def show
    @mainnote = Mainnote.find(params[:id])
    @notecomment = Notecomment.where(mainnote_id: @mainnote.id)
  end

  #新規の投稿のコントローラー
  def new
    @mainnote = Mainnote.new
  end
  #新規内容の投稿を固定。
  def create
    @mainnote = Mainnote.new(mainnote_params)

    if @mainnote.save
      redirect_to @mainnote
    else
      render :new
    end
  end

  #投稿内容更新のコントローラー
  def edit
    @mainnote = Mainnote.find(params[:id])
    unless @mainnote.user_id == current_user.id
      redirect_to  @mainnote
    end
  end

  #ログイン情報のアップデート
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

  #投稿内容の削除
  def destroy
    @mainnote = Mainnote.find(params[:id])
    if @mainnote.user_id != current_user.id
      redirect_to  @mainnote
    else
      @mainnote.destroy
      redirect_to root_path
    end
  end

  #ログインユーザーの投稿内容を取り出す。
  def mypage
    @mainnote = Mainnote.where(user_id: current_user.id)
    @notecomment = Notecomment.where(mainnote_id: @mainnote.ids)
    render layout: false 
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
  
  #ハッシュ化するための
  private
    def mainnote_params
      params.require(:mainnote).permit(:user_id,:usenamer, :text, :user_icon)
    end


end
