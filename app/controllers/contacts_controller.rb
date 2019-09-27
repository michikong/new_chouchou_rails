require 'pry'
# binding.pry

class ContactsController < ApplicationController
   def index
      @contacts = Contact.all
   end

   def show
      @contact = Contact.find(params[:id])
   end

   def new
      @contacts = Contact.new
   end

   def create
      @contact = Contact.new(contact_params)
      # binding.pry
      if @contact.save
         flash[:success] = '内容がが正常に保存されました'
         redirect_to @contact
      else
         flash.now[:danger] = '内容が保存されませんでした'
         render :new
      end
   end

   def edit
      @contact = Contact.find(params[:id])
   end

   def update
       @contact = Contact.find(params[:id])

      if @contact.update(contact_params)
         flash[:success] = '内容は正常に更新されました'
         redirect_to @contact
      else
         flash.now[:danger] = '内容は更新されませんでした'
         render :edit
      end
   end

   def destroy
      @contact = Contact.find(params[:id])
      @contact.destroy
      
      flash[:success] = '内容は正常に削除されました'
      redirect_to contacts_url
   end
   
   # 以降に定義されたメソッドがこのクラス内でのみ使用することを明示
   private
   
   # Strong Parameter
   def contact_params
      params.require(:contact).permit(
         :content,
         :name, 
         :ruby,
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
