class TeamUsersController < ApplicationController
  before_action :set_team_user, only: [:destroy]

    #create a TeamUser of user logged
  def create
    @team_user = TeamUser.new(team_user_params)

    #verificate if user can create a TeamUser inside teamuser
    authorize! :create, @team_user

    respond_to do |format|
      if @team_user.save
        format.json { render :show, status: :created }
      else
        format.json { render json: @team_user.errors, status: :unprocessable_entity }
      end
    end
  end

   #test with can can user can destroy record of teamuser (owner)
  def destroy
    authorize! :destroy, @team_user
    @team_user.destroy

    respond_to do |format|
      format.json { render json: true }
    end
  end

  private

   #set team for id user and id team
  def set_team_user
    @team_user = TeamUser.find_by(user_id: params[:id], team_id: params[:team_id])
  end

  #params permit
  def team_user_params
    user = User.find_by(email: params[:team_user][:email])
    params.require(:team_user).permit(:team_id).merge(user_id: user.id)
  end
end