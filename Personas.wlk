import objetos.*

object rosa {
  method leGusta(unaCosa){
    return unaCosa.peso() <= 2000;
  }
}

object estefania{
  method leGusta(unaCosa){
    return unaCosa.color().esColorFuerte()
  }
}

object luisa{
  method leGusta(unaCosa){
    return unaCosa.material().esBrillante()
  }
}

object juan{
  method leGusta(unaCosa){
    return unaCosa.peso().between(1200, 1800) || not unaCosa.color().esColorFuerte();
  }
}