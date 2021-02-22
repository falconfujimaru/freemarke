class FremarsController < ApplicationController
  def index
    @fremars = Fremar.all
  end

  def show
    @fremar = Fremar.find(params[:id])
  end

  def new
    @fremar = Fremar.new
  end

  def edit
    @fremar = Fremar.find(params[:id])
  end

  def update
    fremar = Fremar.find(params[:id])
    fremar.update(fremar_params)
    redirect_to fremar_url, notice: "#{fremar.name}を更新しました｡"
  end

  def create
    fremar = Fremar.new(fremar_params)
    fremar.save
    redirect_to fremars_url, notice: "#{fremar.name}を登録しました｡"
  end

  def destroy
    fremar = Fremar.find(params[:id])
    fremar.destroy
    redirect_to fremars_url, notice: "#{fremar.name}を削除しました｡"
  end
  private 

  def fremar_params
    params.require(:fremar).permit(:name, :description)
  end
end
