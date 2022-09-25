class Api::TestsController < ApplicationController
    def index
        @tests = Test.pluck(:title, :content)
        render json: { status: 'success', message: '', data: @tests }
    end

    def show
        @test = Test.where(id: params[:id]).pluck(:title, :content)
        render json: { status: 'success', message: '', data: @test }
    end

    def create
        Test.create(title: 'a', content: 'b')
    end
end
