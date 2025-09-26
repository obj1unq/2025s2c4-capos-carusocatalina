import wollok.game.*
import castillo.*
object rolando {
    var property posicion = game.at(0, 0)
    var capacidad = 2
    const mochila = #{}
    
    method guardarArtefacto(_artefacto){
        if (self.hayEspacioEnMochila()){
            mochila.add(_artefacto) 
         }
    }
    method estaEnCasa() = posicion == castillo.position()
    method hayEspacioEnMochila() = self.cantidadArtefactos() < capacidad
    method cantidadArtefactos() = mochila.size()
    method eliminarArtefacto(_artefacto) = mochila.remove(_artefacto)

    method enElCastillo() {
        if (self.estaEnCasa()){
            mochila.forEach({artefacto => castillo.guardarEnBaul(artefacto)})
        }
        else { self.error("no esta en casa")}
    }
}