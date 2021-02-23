class FremarsController < ApplicationController
  before_action :set_fremar, only: [:show, :edit, :update, :destroy]

  def index
    @fremars = Fremar.all
  end

  def show
    # @fremar = Fremar.find(params[:id])
  end

  def new
    @fremar = Fremar.new
  end

  def edit
    # @fremar = Fremar.find(params[:id])
  end

  def update
    @fremar.update(fremar_params)
    if @fremar.save
      redirect_to fremars_url, notice: "#{@fremar.name}を更新しました｡"
    else
      render :edit
    end   
  end

  def create
    @fremar = Fremar.new(fremar_params)
    if @fremar.save
      redirect_to @fremar, notice: "#{@fremar.name}を登録しました｡"
    else
      render :new
    end
  end

  def destroy
    @fremar.destroy
    redirect_to fremars_url, notice: "#{@fremar.name}を削除しました｡"
  end
  
  private 

  def fremar_params
    params.require(:fremar).permit(:name, :price, :seller, :description, :email, :image)
  end

  def set_fremar
    @fremar = Fremar.find(params[:id])
  end
end
