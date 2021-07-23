class Api::V1::RankingsController < ApplicationController

    # def index
    #     # userで取得するので不要になった
    # end

    def create
        #daily_rankingをsaveする
        #rankingもsaveする
        @daily_ranking=Ranking.new(params[:user_id])
        @ranking=Ranking.new(params[:user_id])

        if @daily_ranking.save && @ranking.save
            render json: { status: 200, message: "保存し成功しました", daily_ranking: @daily_ranking , ranking: @ranking}
        elsif !@daily_ranking.save || !@ranking.save 
            
            if @daily_ranking.id != nil 
                @daily_ranking.destroy
            else
                @ranking.destroy
            end

            render json: { status: 500, message: "保存に失敗しました" }

        end
        

    end
    
    # def show
        
    # end
end
# TODO: whenever
# TODO: 日本時間
