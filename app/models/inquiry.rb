class Inquiry < ApplicationRecord
   validates :content, presence: true, length: { maximum: 255 }
   validates :name, presence: true, length: { maximum: 255 }
   validates :ruby, presence: true, length: { maximum: 255 }
   validates :email, presence: true, length: { maximum: 255 }
   validates :confirm_email1, presence: true, length: { maximum: 255 }
   validates :confirm_email2, presence: true, length: { maximum: 255 }
   validates :contact, presence: true, length: { maximum: 255 }
end
