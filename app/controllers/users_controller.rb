class UsersController < ApplicationController
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
 
        if @user.save
            redirect_to users_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :s_name, :lastname, :s_lastname, :rut, :email, :password, :bloodtype_id, :country_id)
    end
    # Fin - Creación de usuario
end