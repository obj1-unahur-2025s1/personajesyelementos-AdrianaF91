import objetos.*
import Personas.*

object bolichito{
    var objetoEnVidriera = pelota;
    var objetoEnMostrador = placa;

    method objetoEnVidriera(){
        return objetoEnVidriera
    }

    method objetoEnMostrador(){
        return objetoEnMostrador
    }

    method cambiarObjetoEnVidriera(unObjeto){
        objetoEnVidriera = unObjeto
    }

    method cambiarObjetoEnMostrador(unObjeto){
        objetoEnMostrador = unObjeto
    }

    method esBrillante(){
        return objetoEnVidriera.material().esBrillante() && objetoEnMostrador.material().esBrillante()
    }

    method esMonocromatico(){
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }

    method estaEquilibrado(){
        return objetoEnVidriera.peso() < objetoEnMostrador.peso()
    }

    method tieneObjetoDeColor(unColor){
        return objetoEnVidriera.color() == unColor || objetoEnMostrador.color() == unColor
    }

    method puedeMejorar(){
        return self.esMonocromatico() || not self.estaEquilibrado()
    }
    //utilizo el self para referirme al objeto bolichito
    // el self es el objeto que invoca el metodo, en este caso bolichito
    
    method objetoQueLeGustaA(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
}