class SindansController < ApplicationController
    def index
    end
  
    def new
      @sindan = Sindan.new
    end
  
    def show
      @sindan = Sindan.find_by(id: params[:id])
    end
  
    def create
      @sindan = Sindan.new(sindan_params)
      params[:sindan][:question].map!{|x| x.to_i} 
      params[:sindan][:question] ? @sindan.question = params[:sindan][:question].sum : false
      if @sindan.save
          flash[:notice] = "診断が完了しました"
          redirect_to sindan_path(@sindan.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def sindan_params
        params.require(:sindan).permit(:id, question: [])
    end
end
