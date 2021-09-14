class UfController < ActionController::API
  def respuesta
    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)

    if uf.nil?
      respuesta = "Valor de UF no encontrada para la fecha ingresada."
    else
      respuesta = {fecha_solicitada: fecha_solicitada, valor: uf.value}
    end
    User.create(username: params["x-client"], uf_value: respuesta, date_request: fecha_solicitada)
    render json: respuesta
  end

  def requestamount
    request = User.where(username: params[:username])
    if request.nil?
      quantity = 0
    else
      quantity = params[:username] + " ha hecho " + request.count.to_s + " consultas"
    end
    render json: quantity
  end
end
