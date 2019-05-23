class EmailController < ApplicationController
	def index
  		@emails = Email.all
	end

	def create
		puts "$"*80
		puts params
		puts "$" *80
  		@email = Email.create(objet: Faker::Internet.email, body: Faker::Lorem.paragraph(2))
  		respond_to do |format|
      		format.html { redirect_to root_path }
      		format.js { }
	end
	end

	def show
		@emailz = Email.find(params[:id])
		respond_to do |format|
      		format.html { redirect_to email_path(@emailz.id) }
      		format.js { }
	end
end
	def destroy 
    	@email_destroy = Email.find(params[:id])
    	@email_destroy.destroy!
    	redirect_to('/')
  	end 
end