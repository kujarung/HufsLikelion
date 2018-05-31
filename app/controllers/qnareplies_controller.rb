class QnarepliesController < ApplicationController
    
    def new
        @qna = Qnareply.new
        @bringqna = params[:qna_id]
    end
        
    def create
        @qnareply = Qnareply.new(qnareply)
        @qnareply.save
        
        redirect_to qna_path(params[:qna_id])
    end
    
    def destroy
        @qnareply = Qnareply.find(params[:id])
        @qnareply.destroy
        redirect_to qna_path(params[:qna_id])
    end
    
    private
        def qnareply
            params.require(:qnareply).permit(:title, :content, :user_email, :qna_id)
        end
end
