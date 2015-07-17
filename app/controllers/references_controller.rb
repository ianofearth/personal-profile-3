class ReferencesController < ApplicationController



  def new
    @user = User.find(params[:user_id])
    @reference = @user.references.new
  end

  def create
    @user = User.find(params[:user_id])
    @reference = @user.references.new(reference_params)
    if @reference.save
      flash[:notice] = "Reference added."
    else
      render :new
    end
    respond_to do |format|
      format.html { redirect_to user_references_path(@user, @reference) }
      format.js
    end
  end

private
  def reference_params
    params.require(:reference).permit(:name, :phone, :email, :body)
  end

end
