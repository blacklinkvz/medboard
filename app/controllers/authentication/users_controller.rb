class Authentication::UsersController < ApplicationController

def index
			@users = User.all
	end

def new
		@user = User.new
		@countries = Country.all
		@bloodtypes = Bloodtype.all
end

# Inicio - Creación de usuario
def create
		@user = User.new(user_params)
		@bloodtypes = Bloodtype.all
		@countries = Country.all

		if @user.save
				redirect_to users_path
		else
				flash.now[:alert] = 'Todos los campos deben ser llenados'
				render :new, status: :unprocessable_entity
		end
end

private

def user_params
		params.require(:user).permit(:name, :s_name, :lastname, :s_lastname, :rut, :email, :password, :passport, :bloodtype_id, :country_id)
end
# Fin - Creación de usuario

# Inicio - Edición de usuario
def edit
		@user = User.find(params[:id])
end
end