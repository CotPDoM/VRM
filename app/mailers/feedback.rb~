class Feedback < ActionMailer::Base
  default :to => "nick@pccrovers.com"
  
  def feedback(user,type,msg)
    @user = user
#     @url = "http://example.com/login"
    @msg = msg
    @type = type
    sent_on Time.now
    Rails.logger.info(type)
    case type
      when "Bug" then
	mail(:to => "nick@pccrovers.com",
	     :from => @user.email,
             :subject => "[~VRM] New idea from " + user.name)
	Rails.logger.info("Takes case :bug")
      when "Suggestion" then
	mail(:to => "nick@pccrovers.com",
	      :from => @user.email,
	      :subject => "[~VRM] New idea from " + user.name)
	Rails.logger.info("Takes case :suggestion")
      else
	Rails.logger.info("DOESN'T TAKE ANY CASE OPTION")
    end
  end
end
