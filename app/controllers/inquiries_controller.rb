require 'pry'
# binding.pry
class InquiriesController < ApplicationController
   before_action :set_inquiry, only: [:show, :edit, :update, :destroy]
   
   def index
      @inquiries = Inquiry.all.page(params[:page])
      # @inquiries = Inquiry.all.page(params[:page]).per(5)
      # 降順
      # @messages = Message.order(id: :desc).page(params[:page]).per(3)
   end

   def show
   end

   def new
      @inquiry = Inquiry.new
   end

   def create
      @inquiry = Inquiry.new(inquiry_params)
      # binding.pry
      if @inquiry.save
         flash[:success] = '内容が正常に保存されました'
         redirect_to @inquiry
      else
         flash.now[:danger] = '内容が保存されませんでした'
         render :new
      end
   end

   def edit
   end

   def update
      if @inquiry.update(inquiry_params)
         flash[:success] = '内容は正常に更新されました'
         redirect_to @inquiry
      else
         flash.now[:danger] = '内容は更新されませんでした'
         render :edit
      end
   end

   def destroy
      @inquiry.destroy
      
      flash[:success] = '内容は正常に削除されました'
      redirect_to inquiries_url
   end
   
   # 以降に定義されたメソッドがこのクラス内でのみ使用することを明示
   private
   
   # 共有化
   def set_inquiry
      @inquiry = Inquiry.find(params[:id])
   end
   
   # Strong Parameter
   def inquiry_params
      params.require(:inquiry).permit(
         :content,
         :name, 
         :ruby,
         :email,
         :confirm_email1,
         :confirm_email2,
         :contact)
   end
end
