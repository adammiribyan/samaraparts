#coding: utf-8;

class FeedbacksController < ApplicationController
  before_filter :authenticate

  def index
    @feedbacks = Feedback.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @feedback = Feedback.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(params[:feedback])

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to(feedbacks_url, :notice => 'Отзыв был успешно создан.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      if @feedback.update_attributes(params[:feedback])
        format.html { redirect_to(feedbacks_url, :notice => 'Отзыв был успешно изменен.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    respond_to do |format|
      format.html { redirect_to(feedbacks_url, :notice => 'Отзыв был успешно удален.') }
    end
  end
  
end
