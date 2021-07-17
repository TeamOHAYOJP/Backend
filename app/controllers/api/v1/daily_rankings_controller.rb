class Api::V1::DailyRankingsController < ApplicationController
  def index
    @daily_rankings = DailyRanking.all

    render json:{ status: 200, message: "取得に成功しました", daily_rankings: @daily_rankings }
  end

  def create
    @daily_ranking = DailyRanking.new(params[:user_id]) 
    
    if @daily_ranking.save
      render json: { status: 200, message: "保存し成功しました", daily_ranking: @daily_ranking }
    else
      render json: { status: 500, message: "保存に失敗しました" }
    end
  end

  def destroy_all
    if DailyRanking.destroy_all
      render json: { status: 200, message: "全削除に成功しました" }
    else
      render json: { status: 500, message: "全削除に失敗しました" }
    end
  end

  private

  # def dailiy_rankings_params
  #   params.permit(:user_id)
  # end
end
