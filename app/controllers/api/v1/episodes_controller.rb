class Api::V1::EpisodesController < ApiBaseController

  def index
    return unless params[:tvshow].present?

    tvshow = Tvshow.includes(:episodes, episodes: :videos).where(identifier: params[:tvshow]).first

    @episodes = tvshow ? tvshow.episodes : []

    if params[:callback]
      render :json => @episodes.to_json(:include => :videos), :callback => params[:callback], :content_type => 'application/javascript'
    else
      render json: @episodes
    end
  end

  def show
    return if !params[:identifier].present? || !params[:rabbi].present?

    @episode = Episode.where("identifier = ? and rabbi = ? ", params[:identifier], params[:rabbi]).first

    if params[:callback]
      render :json => @episode.to_json(:include => :videos), :callback => params[:callback], :content_type => 'application/javascript'
    else
      render json: @episode.to_json(:include => :videos)
    end
  end

  def featured
    @episodes = Episode.where(spotlight: true)

    if params[:callback]
      render :json => @episodes.to_json(:include => :videos), :callback => params[:callback], :content_type => 'application/javascript'
    else
      render json: @episodes
    end
  end

end
