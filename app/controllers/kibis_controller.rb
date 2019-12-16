class KibisController < ApplicationController

  def index
    @kibi = Kibi.last
  end

  def new
    @kibi = Kibi.new
  end

  def create
    @kibi = Kibi.create(kibi_params)
    if @kibi.invalid?
      flash[:error] = '<strong> you didnt complete all fields!!</strong>'
    end
    redirect_to root_path
  end

  private

  def kibi_params
    params.require(:kibi).permit(:name, :description, :address)
  end

end
