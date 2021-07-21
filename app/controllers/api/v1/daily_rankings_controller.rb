class Api::V1::DailyRankingsController < ApplicationController
  def index
    @daily_rankings = DailyRanking.all

    render json:{ status: 200, message: "取得に成功しました", daily_rankings: @daily_rankings }
  end

  def create
    @daily_ranking = DailyRanking.new(dailiy_rankings_params) 
    @ranking = Ranking.new(dailiy_rankings_params)

    if @daily_ranking.save && @ranking.save
      render json: { status: 200, message: "保存し成功しました", daily_ranking: @daily_ranking , ranking: @ranking}
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

  def is_ranked_in
    if !current_api_v1_user
      render json: { status: 500, message: "ログインユーザーがいません" } 
    end

    if DailyRanking.where(user_id: current_api_v1_user.id).present?
      render json: { status: 200, is_ranked_in: true }
    else
      render json: { status: 200, is_ranked_in: false }
    end

  end
  private

  def dailiy_rankings_params
    params.permit(:user_id)
  end
end
