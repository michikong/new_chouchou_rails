class Contact < ApplicationRecord
     validates :content, presence: true, length: { maximum: 255 }
     validates :name, presence: true, length: { maximum: 255 }
     validates :ruby, presence: true, length: { maximum: 255 }
     validates :phone_number, presence: true, length: { maximum: 255 }
     validates :email, presence: true, length: { maximum: 255 }
     validates :age, presence: true, length: { maximum: 255 }
     validates :blood, presence: true, length: { maximum: 255 }
     validates :gender, presence: true, length: { maximum: 255 }
     validates :payment, presence: true, length: { maximum: 255 }
     validates :contact, presence: true, length: { maximum: 255 }
     validates :confirm_email1, presence: true, length: { maximum: 255 }
     validates :confirm_email2, presence: true, length: { maximum: 255 }
end