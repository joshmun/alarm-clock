class AlarmController < ApplicationController
  def index
    @t = Time.now
  end

  def show
    @t = Time.now
    respond_to do |format|
      format.js { }
    end

  render partial: 'time', :layout => false
  end

  def create
    respond_to do |format|
      format.js { }
    end

    user_data = params["_json"]
    alarm_time = user_data[0]
    phonenumber = user_data[1]

    p alarm_time
    p phonenumber
  end

  private
    def userData
       params.require(:alarm).permit(:"_json")
    end
end
