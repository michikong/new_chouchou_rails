require 'pry'
# binding.pry
class ContactsController < ApplicationController
   before_action :set_contact, only: [:show, :edit, :update, :destroy]
   
   def index
      @contacts = Contact.all.page(params[:page])
      
      # @contacts = Contact.all.page(params[:page]).per(5)
      # 降順
      # @messages = Message.order(id: :desc).page(params[:page]).per(3)   
   end

   def show
   end

   def new
      @contact = Contact.new
   end

   def create
      @contact = Contact.new(contact_params)
      # binding.pry
      if @contact.save
         flash[:success] = '内容が正常に保存されました'
         redirect_to @contact
      else
         flash.now[:danger] = '内容が保存されませんでした'
         render :new
      end
   end

   def edit
   end

   def update
      if @contact.update(contact_params)
         flash[:success] = '内容は正常に更新されました'
         redirect_to @contact
      else
         flash.now[:danger] = '内容は更新されませんでした'
         render :edit
      end
   end

   def destroy
      @contact.destroy
      
      flash[:success] = '内容は正常に削除されました'
      redirect_to contacts_url
   end
   
   # 以降に定義されたメソッドがこのクラス内でのみ使用することを明示
   private
   
   
   # 共有化
   def set_contact
      @contact = Contact.find(params[:id])   
   end
   
   # Strong Parameter
   def contact_params
      params.require(:contact).permit(
         :content,
         :name, 
         :ruby,
         :phone_number,
         :email,
         :age,
         :blood,
         :gender,
         :payment,
         :contact,
         :confirm_email1,
         :confirm_email2)
   end
end
