class UserMailer < ApplicationMailer
  # In app/mailers/user_mailer.rb

  default from: "todo@todoltx.com.com"

  def welcome(user)
    @user = user #@user will be whatever user we pass in to the 'welcome' method
    mail( :to => @user.email, :subject => "Welcome to Todo", :cc => "todo@todoltx.com" )
  end
end
