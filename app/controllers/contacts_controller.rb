class ContactsController < ApplicationController
   def index
      @contacts = Contact.all
   end

   def show
      @contactid = Contact.find(params[:id])

      @contact = Contact.new({
      content: params[:content],
      name: params[:name],
      ruby: params[:ruby],
      phone_number: params[:phone_number],
      email: params[:email],
      age: params[:age],
      blood: params[:blood],
      gender: params[:gender],
      payment: params[:payment],
      contact: params[:contact],
      confirm_email1: params[:confirm_email1],
      confirm_email2: params[:confirm_email2]
      })
   end

   def new
      @contact = Contact.new
   end

   def create
      @contact = Contact.new(contact_params)
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
      params.require(:contact).permit(:contact)
   end
end
