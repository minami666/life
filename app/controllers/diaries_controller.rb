class DiariesController < ApplicationController
  before_action :set_diary, only: [:show,:edit,:update,:destroy]

  def index
    @diaries = Diary.all
  end

  def show
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.create(diary_params)
    # binding.pry
    if @diary.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @diary.update
      redirect_to root_path
    else
      render "edit"
    end

  end

  def destroy
    @diary.destroy
    redirect_to root_path
  end

  private
    def diary_params
      params.require(:diary).permit(:title,:text,:image).merge(user_id: current_user.id)
    end

    def set_diary
      @diary = Diary.find(params[:id])
    end

end
