class SessionsController < ApplicationController
  def create
    @user = User.find_by email: session_params[:email]
    # if @user and @user.authenticate session_params[:password]

    # else
    #   render json: 'Bad credentials', status: 401
    # end

    respond_to do |format|
      if @user and @user.authenticate session_params[:password]
        format.json { render :show, status: :ok }
      else
        format.json { render json: {:msg => 'Bad credentials'}, status: 401 }
      end
    end
  end

  private
    def session_params
      params.permit(:email, :password)
    end    
end