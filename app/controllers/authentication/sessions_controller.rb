class Authentication::SessionsController < ApplicationController

	def new
	end

	# Inicio - Creación session
	def create
		@user = User.find_by("email = :email",{ email: params[:email] })
	
		if @user&.authenticate(params[:password])
			redirect_to users_path, notice: t('.created')
		else
			redirect_to new_session_path, alert: t('.failed')
			#render :new, stastus: :unprocessable_entity
		end
	end

	private

	def user_params
			params.require(:user).permit(:name, :s_name, :lastname, :s_lastname, :rut, :email, :password, :passport, :bloodtype_id, :country_id)
	end
	# Fin - session

	# Inicio - Edición de usuario
	def edit
			@user = User.find(params[:id])
	end
end