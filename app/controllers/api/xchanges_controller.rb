module Api
  class XchangesController < ApplicationController

    def index 
      @xchanges = Xchange.all
      respond_to do |format|
        format.json { render :index }
      end
    end

  end
end
