class KibisController < ApplicationController

  def index
    @kibi = Kibi.last
  end

  def new
    @kibi = Kibi.new
  end

end
