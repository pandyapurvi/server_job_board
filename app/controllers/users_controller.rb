class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render :json => @users }
    end
  end

  def create
    logger.info "============== ============ CREATE ============== ============"
    logger.info params
    logger.info params[:password]
    #logger.info user_params
    user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    user.update(:employer => false)
    user.update(:name => params[:name])

    if user.save
      render json: {status: 'User created successfully', user_id: user.id, employer: user.employer, name: user.name, email: user.email }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end


  def login
    logger.info "============== ============ LOGIN ============== ============"
    logger.info params
    logger.info params[:email]
    logger.info params[:password]

    user = User.find_by(email: params[:email].to_s.downcase)

    if user && user.authenticate(params[:password])
        auth_token = JsonWebToken.encode({user_id: user.id})
        render json: {auth_token: auth_token, user_id: user.id, employer: user.employer, name: user.name, email: user.email }, status: :ok
        #render json: {status: 'User logged in successfully'}, status: :ok
    else
      render json: {error: 'Invalid username / password'}, status: :unauthorized
    end
  end


  private
  def user_params
    params.require(:user).permit(:email,:password_digest,:name ,:phone,:website, :company_size, :company_type,:description, :ABN, :image, :resume, :notice_period,:experience, :current_title, :application_id)
  end

end
