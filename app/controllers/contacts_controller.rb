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
         flash[:success] = 'Contact が正常に保存されました'
         redirect_to @contact
      else
         flash.now[:danger] = 'Contact が保存されませんでした'
         render :new
      end
   end

   def edit
      @contact = Contact.find(params[:id])
   end

   def update
   end

   def destroy
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
