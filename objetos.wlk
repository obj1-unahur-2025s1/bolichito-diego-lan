// Colores
object rojo {
  method esFuerte() {return true}
}

object verde {
  method esFuerte() {return true}
}

object celeste {
  method esFuerte() {return false} 
}

object pardo {
  method esFuerte() {return false} 
}

object naranja {
    method esFuerte() {return true}
}

// Materiales
object cobre {
  method brilla() {return true}
}

object vidrio {
  method brilla() {return true}
}

object lino {
  method brilla() {return false}
}

object madera {
  method brilla() {return false}
}

object cuero {
  method brilla() {return false}
}

// Cosas
object remera {
  method color() {return rojo}
  method material() {return lino}
  method peso_gr() {return 800}
}

object pelota {
  method color() {return pardo}
  method material() {return cuero}
  method peso_gr() {return 1300}
}

object biblioteca {
  method color() {return verde}
  method material() {return madera}
  method peso_gr() {return 8000}
}

object munieco {
  var pesoEnGr = 0
  method color() {return celeste}
  method material() {return vidrio}
  method peso_gr() {return pesoEnGr}

  method CambiarPeso(unPeso) {pesoEnGr = unPeso}
}

object placa {
  var pesoEnGr = 0
  var color = rojo

  method color() {return color}
  method CambiarColor(unColor) {color = unColor}
  
  method material() {return cobre}
  method peso_gr() {return pesoEnGr}

  method CambiarPeso(unPeso) {pesoEnGr = unPeso}
}

object arito {
    method color() {return celeste}
    method material() {return cobre}
    method peso_gr() {return 180}
}

object banquito {
    var color = naranja
    method color() {return color}
    method CambiarColor(unColor) {color = unColor}
    method material() {return madera}
    method peso_gr() {return 1700}
}

object cajita {
    var color = rojo
    var objetoEnCajita = munieco
    method color() {return color}
    method CambiarColor(unColor) {color = unColor}
    method material() {return cobre}
    method peso_gr() {return 400 + objetoEnCajita.peso_gr()}
    method cambiarObjetoEnCajitaPor_(otroObjeto) {objetoEnCajita = otroObjeto}
}