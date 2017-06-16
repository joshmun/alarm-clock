class AlarmController < ApplicationController
  def index
    @t = Time.now
  end

  def show
    @t = Time.now
    respond_to do |format|
      format.js {}
    end
    render partial: 'time', layout: false
  end
end
