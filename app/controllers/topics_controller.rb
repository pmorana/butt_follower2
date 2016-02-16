class TopicsController < ApplicationController
	
	def index
		@topics = Topic.all
	end

	def show
		@user = current_user
    @topics = Topic.all
		#@event = Event.find_by(params[:event_id])
		#@topic = Topic.find(params[:id])
	end

	def new
		@topic = @user.topics.build
	end

	def create
		@event = Event.find_by(params[:event_id])
		@topic = @user.topics.build(topic_params)
    @user = current_user
		

		   respond_to do |format|
      if @topic.save
        format.html { redirect_to @event, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
  	@topic.destroy
  	respond_to do |format|
  		format.html { redirect_to :back, notice: 'Topic was successfully destroyed.'}
  		format.json { head :no_content}
  	end
  end

  def upvote
  	@topic = Topic.find(params[:id])
  	@topic.upvote_by current_user
  	redirect_to :back
  end

  def downvote
  	@topic = Topic.find(params[:id])
  	@topic.downvote_from current_user
  	redirect_to :back
  end


  	private
  	 def topic_params
      	params.require(:topic).permit(:body)
    	end
end
