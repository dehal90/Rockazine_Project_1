class PagesController < ApplicationController

  layout 'site'

  def show
    @page_name = params[:page_name].to_s.gsub(/\W/,'')
  end

end