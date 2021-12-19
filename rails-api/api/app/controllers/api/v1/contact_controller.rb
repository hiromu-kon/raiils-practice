class Api::V1::ContactController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @contacts = Contact.all
    end
   
    def create
        @contact = Contact.new(contact_params)
    
        if @contact.save
            render :show, status: :created
        else
            render json: @customer.errors, status: :unprocessable_entity
        end
    end
   
    def update
        @contact = Contact.find(params[:id])
        if @customer.update(customer_params)
            render :show, status: :ok
        else
            render json: @customer.errors, status: :unprocessable_entity
        end
    end
   
    private
   
    def contact_params
        params.fetch(:customer, {}).permit(
            :name, :email
        )
    end
end
