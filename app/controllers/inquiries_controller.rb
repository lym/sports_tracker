class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.save
      redirect_to root_path, :notice => 'Thank you. A response will be sent to your email'
    else
      render :action => 'new'
    end
  end
end
