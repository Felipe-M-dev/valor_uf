# Desafío - Consultando el valor de la UF

- Para realizar este desafío debes haber estudiado previamente todo el material disponibilizado correspondiente a la unidad.
- Una vez terminado el desafío, comprime la carpeta que contiene eldesarrollodelos requerimientos solicitados y sube el .zip en el LMS.
- Desarrollo desafío:
  - El desafío se debe desarrollar de manera Individual.

## Descripción

Juan es un corredor de propiedades y cada mañana debe calcular el valor del arriendo para cada unodelosarrendatarios.Cada arrendatario tiene fechas de pago distintas,por lo que a Juan no le sirve calcular todo a principio de mes. 

Juan te solicita que le desarrolles algún mecanismo para que automáticamente se actualicen sus valores y tú le propones el desarrollo de una API, la cual se la venderás como servicio on demand (Juan pagará por cada consultaque haga). 

Tú, como desarrollador, usarás Rails para crear una API. El endpoint recibirá como parámetro una fecha en formato “yyyy-mm-dd” y retornaráel valor de la UF para ese día.

Además, Juan podrá revisar cuantas veces ha hecho consultas a la API, a través de su propio endpoint, que debe ser más o menos http://localhost:3000/uf/2019-02-01.

## Consideraciones

- Usar sólo valores de UF para Enero y Febrero.
- Si la fecha no existe o está errónea, devolver unmensaje.
- Cada consulta al endpoint debe quedar registrada para saber cuánto cobrara Juan a fin de mes.

## Requerimientos

1. Definir el modelo para guardar los valores históricosde la UF.
2. Devolver el valor de la UF en la fecha solicitada. Sólo se permite que las llamadas entrantes sean en formato json, es decir, no se puede consultar la API desde un browser (hint: usar respond_to).
3. Desarrollar un modelo para guardar las consultas a la API realizadas y que sea identificable por cliente. Se sugiere usar en los requests del punto anterior un header custom que identifique al usuario. Por ejemplo, X-CLIENTE=”juan”.
4. Desarrollar el endpoint para revisar cuantas veces se ha consultado la API. El endpoint debe ser del estilo http://localhost:3000/client/juan. Cabe señalar que “juan” es un parámetro y no parte de una URL estática. 

## Recursos

- Para obtener el valor de la UF, usar este sitio dereferencia:
http://www.sii.cl/valores_y_fechas/uf/uf2019.htm.

- En la documentación oficial, se puede conocer más sobre el método respond_to:
https://api.rubyonrails.org/classes/ActionController/MimeResponds.html#method-i-respond_to.

## Validaciones

Para realizar las validaciones debe ejecutar **Postman** y desde ahí lanzar lo siguiente:

**Consulta uf:**

http://localhost:3000/ufs/<fecha_a_consultar>?x-client=<nombre_cliente>

>Ejemplo:

http://localhost:3000/ufs/06-02-2021?x-client=Felipe

**Salida:**
```
{
    "fecha_solicitada": "06-02-2021",
    "valor": 29207.0
}
```
**Cantidad de consultas:**

http://localhost:3000/client/<nombre_cliente>

>Ejemplo:

http://localhost:3000/client/Felipe

**Salida:**
```
Felipe ha hecho 4 consultas
```
