class ProductStore < ActiveRecord::Base

has_attached_file :photo, :styles => { :shrink => "200x200>"}
                  
     validates_attachment_presence :photo
     validates_attachment_size :photo,:less_than => 7.megabytes
     validates_attachment_content_type :photo, :content_type => ['image/jpeg' , 'image/png', 'image/gif', 'image/svg']
                  
end 

 