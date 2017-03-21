class LikesController < ApplicationController

	def like
    timeline = Timeline.find(params[:timeline_id])
    like = current_user.likes.build(timeline_id: timeline.id)
    like.save
    redirect_to timelines_path
	end

	def unlike
		timeline = Timeline.find(params[:timeline_id])
    like = current_user.likes.find_by(timeline_id: timeline.id)
    like.destroy
    redirect_to timelines_path
	end

end
