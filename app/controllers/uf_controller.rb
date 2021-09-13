class UfController < ActionController::API
  def respuesta
    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)

    respuesta = {fecha_solicitada: fecha_solicitada, valor: uf.value}

    render json: respuesta
  end
end
