class MemberController < ApplicationController
  before_action :authenticate_member!
  def index
  	@member = Member.all
  end

  def show
  	@member = Member.find(params[:id])
  	unless @member == current_user
  		redirect_to :back,alert => "Access Denied"
  	end
  end
end
