module Api::V1
  class PayMethodsController < ApiController

    def create
      @pay_method = PayMethod.new(set_params)
      return render json: @pay_method, status: 201 if @pay_method.save!
    end
    
    def index
      @pay_method = PayMethod.all
      @pay_method = @pay_method.where('name LIKE ?', params[:name]) if params[:name] != nil
      return render json: @pay_method, only: [:id, :name, :tax, :limit_days], status: :ok if @pay_method !=nil
    end

    private

    def set_params
      params.require(:pay_method).permit(:name, :tax, :limit_days)
    end
  end
end
