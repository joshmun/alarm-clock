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
    alarm_time = user_data[0].to_time
    phonenumber = user_data[1]

    AlarmController.delay({run_at: alarm_time}).wakeup_call(phonenumber)
  end

  def self.wakeup_call(phonenumber)
    account_sid = ENV["ACCOUNT_SID"]
    auth_token = ENV["AUTH_TOKEN"]
    @client = Twilio::REST::Client.new account_sid, auth_token

    @call = @client.account.calls.create(
      :url => 'http://ahoy.twilio.com/voice/api/demo',
      :to => phonenumber,
      :from => "+16504667876"
      )
    puts @call.start_time
  end

  private

    def userData
       params.require(:alarm).permit(:"_json")
    end
end
