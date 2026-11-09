class NewUsersController < ApplicationController

  def index
  end

  def create_user
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      flash[:notice] = "Usuário cadastrado com sucesso!"
      redirect_to "/new_users"
    else
      flash.now[:alert] = @usuario.errors.full_messages.join(", ")
      render :index, status: :unprocessable_entity
    end
  end

  private

  def usuario_params
    params.require(:usuario).permit(:name, :password)
  end

end