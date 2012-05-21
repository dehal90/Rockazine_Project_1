class ApplicationController < ActionController::Base
before_filter :authenticate_user!, :except => [:index, :create, :show,:about,:back,:post,:new,:edit,:new,:contact]  
  
  protect_from_forgery

helper_method :jetinder?

protected 

def access
  unless jetinder?
    redirect_to posts_path
    false
  end
end

def jetinder?
false
  #request.remote_ip =="127.0.0.1" but no point in implementing method because site is ran locally

end

end
