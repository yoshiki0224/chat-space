class GroupsController < ApplicationController
<<<<<<< HEAD
=======
  before_action :set_group, only: [:edit, :update]

>>>>>>> 1055be327df159b918ea680e41dfa4394318512d
  def index
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def update
    if @group.update(group_params)
      redirect_to group_messages_path(@group), notice: 'グループを編集しました'
    else
      render :edit
    end
  end

  private
<<<<<<< HEAD

  def group_params
    params.require(:group).permit(:name, user_ids: [] )
=======
  def group_params
    params.require(:group).permit(:name, { :user_ids => [] })
>>>>>>> 1055be327df159b918ea680e41dfa4394318512d
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
