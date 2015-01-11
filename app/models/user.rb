class User < ActiveRecord::Base

	before_save {self.email = email.downcase }
	
	validates :name, presence: true , length: {maximum:50}
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :email, presence: true ,          #必选
		length: {maximum:255}, 					#最大长度255
		format: { with: VALID_EMAIL_REGEX },    #格式验证
		uniqueness: { case_sensitive: false }   #唯一性验证,且不区分大小写
end
