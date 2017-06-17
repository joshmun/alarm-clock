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

    perform_call(phonenumber, alarm_time)
  end

  def perform_call(phonenumber, alarm_time)
    wakeup_call(phonenumber).delay({run_at: alarm_time})
  end

  def wakeup_call(phonenumber)
    account_sid = 'AC466416da1b1384010b65078872e348df'
    auth_token = '90c5a85b3709194cf54f1d89c87df8ad'
    @client = Twilio::REST::Client.new account_sid, auth_token

    @call = @client.account.calls.create(
      :url => 'http://ahoy.twilio.com/voice/api/demo',
      :to => phonenumber,
      :from => "+16504667876"
      )
    puts @call.start_time
  end

  def hello
    Twilio::TwiML::Response.new do |r|
    r.Say 'Good morning. Wake up!'
    end.text
  end

  private
    def userData
       params.require(:alarm).permit(:"_json")
    end
end
