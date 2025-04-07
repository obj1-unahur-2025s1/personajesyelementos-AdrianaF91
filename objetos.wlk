// colores

object rojo{
   method esColorFuerte() = true
   // es lo mismo poner method esColorFuerte() = true
}

object verde{
   method esColorFuerte() {
     return true
   }
}

object celeste{
   method esColorFuerte() {
     return false
   }
}

object pardo{
    method esColorFuerte() {
      return false
    }
}
object naranja{
    method esColorFuerte() {
      return true
    }
}
// materiales

object cobre {
  method esBrillante () {
    return true
  }
}

object vidrio {
  method esBrillante () {
    return true
  }
}

object lino {
  method esBrillante () {
    return false
  }
}

object madera {
  method esBrillante () {
    return false
  }
}

object cuero {
  method esBrillante () {
    return false
  }
}

//objetos

object remera{
  method color() {
    return rojo
  }
  method material() {
    return lino
  }
  method peso(unPeso){
    return 800
  }
}

object pelota{
  method color(){
    return pardo
  }
  method material(){
    return cuero
  }
  method peso(){
    return 1300
  } 
}

object biblioteca{
  method color() {
    return verde
  }
  method material(){
    return vidrio
  } 
  method peso(){
    return 8000
  }
}

object muñeco{
  var pesoActual = 0;

  method color(){
    return celeste
  }
  method material(){
    return vidrio
  }
  method peso() {
    return pesoActual //metodo de consulta - me muestra el peso
  } 
  method cambiarPeso(unPeso){
    pesoActual = unPeso; //metodo de indicacion - le indico el peso
    return pesoActual //devuelvo el pesoActual
  }
}

object placa{
  var pesoActual = 0;
  method color(color){
    return color
  }
  method material(){
    return cobre
  }
  method peso() {
    return pesoActual //metodo de consulta - me muestra el peso
  } 
  method cambiarPeso(unPeso){
    pesoActual = unPeso;
    return pesoActual
  }
}

object arito{
  method color(){
    return celeste
  }
  method material(){
    return cobre
  }
  method peso(){
    return 180
  }
}

object banquito{
  var colorActual = naranja;
  method color(){
    return colorActual
  }
  method cambiarColor(unColor){
    colorActual = unColor;
    return colorActual
  }
  method material(){
    return madera
  }
  method peso(){
    return 1700
  }
}

object cajita{
  var objetoAdentro = pelota;
  
  method cambiarObjetoAdentro(unObjeto){
    objetoAdentro = unObjeto;
    return objetoAdentro
  }
  method objetoAdentro(){
    return objetoAdentro
  }
  method color(){
    return rojo
  }
  method material(){
    return madera
  }
  method peso(){
    return 400 + objetoAdentro.peso()
  }
}