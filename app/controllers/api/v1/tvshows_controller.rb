class Api::V1::TvshowsController < ApiBaseController

  def index
    if params[:callback]
      render :json => Tvshow.all.to_json, :callback => params[:callback], :content_type => 'application/javascript'
    else
      render json: Tvshow.all
    end
  end

  def show
    return unless params[:identifier].present?

    @tvshow = Tvshow.where(identifier: params[:identifier]).first

    if params[:callback]
      render :json => @tvshow.to_json(:include => :episodes), :callback => params[:callback], :content_type => 'application/javascript'
    else
      render json: @tvshow.to_json(:include => :episodes)
    end
  end

end
