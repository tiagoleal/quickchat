class ChannelsController < ApplicationController
  before_action :set_channel, only: [:destroy, :show]

   #create a channel of user logged
  def create
    @channel = Channel.new(channel_params)
    #verificate if user can create a channel inside team
    authorize! :create, @channel

    respond_to do |format|
      if @channel.save
        #search in package channel a file show
        format.json { render :show, status: :created }
      else
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end
    end
  end

   #test with can can user can destroy record of channel (owner)
  def destroy
    authorize! :destroy, @channel
    @channel.destroy

    respond_to do |format|
      #return header empty
      format.json { render json: true }
    end
  end

  #verificate if user logged team have permit for read in record @channel
  # renderize view show
  def show
    authorize! :read, @channel
  end

  private

  #set team for id
  def set_channel
    @channel = Channel.find(params[:id])
  end

  #params permit
  def channel_params
    params.require(:channel).permit(:slug, :team_id).merge(user: current_user)
  end

end
