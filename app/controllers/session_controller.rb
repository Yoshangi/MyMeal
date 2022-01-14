class SessionsController < ApplicationController
	def destory
		session[:user_id] = nil
	end
end