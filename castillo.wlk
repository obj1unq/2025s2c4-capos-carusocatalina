import capos.*
import wollok.game.*
object castillo {
    const posicion = game.at(3, 3)
    const heroe = rolando
    const baul = #{}

    method position() = posicion
    method guardarEnBaul(_artefacto) {
        baul.add(_artefacto)
        heroe.eliminarArtefacto(_artefacto)
    }
    
}