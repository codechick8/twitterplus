class UsersController < ApplicationController

  def show
  	@user = User.find_by_username(params[:username])
  	@tweets = Tweet.find_all_by_username(params[:username])
  	@following = Follow.find(:all, :select => "iFollow", :conditions => ['username = ?', params[:username] ])
  	@followers = Follow.find(:all, :select => "username", :conditions => ['iFollow = ?', params[:username] ])
  	@lists = ListUser.find(:all, :select => "Lists_listID", :conditions =>['Users_username =?', params[:username]])
  end




end