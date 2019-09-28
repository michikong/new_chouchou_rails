class ListController < ApplicationController
   
   def index
      @contacts = Contact.all
      @inquiries = Inquiry.all
   end
   
end
