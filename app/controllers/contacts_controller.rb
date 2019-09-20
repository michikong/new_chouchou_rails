class ContactsController < ApplicationController
   def index
      @contacts = Contact.all
   end

   def show
      @contact = Contact.find(params[:id])
   end

   def new
      @contact = Contact.new
   end

   def create
      @contact = Contact.new(contact_params)
      if @contact.save
         flash[:success] = 'Contact が正常に投稿されました'
         redirect_to @contact
      else
         flash.now[:danger] = 'Contact が投稿されませんでした'
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
