import personas.*
import objetos.*

object bolichito {
    var objetoVidriera = munieco
    var objetoMostrador = placa

    method esBrillante() {
        return objetoVidriera.material().brilla() && objetoMostrador.material().brilla()
    }

    method esMonocromatico() {
        return objetoVidriera.color() == objetoMostrador.color()
    }

    method estaEquilibrado() {
        return objetoMostrador.peso_gr() > objetoVidriera.peso_gr()
    }

    method hayObjetoColor_YPuedeMejorar(unColor) {
        return (objetoVidriera.color() == unColor) && self.puedeMejorar()
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() || self.esMonocromatico()
    }

    method puedeOfrecerAlgoA_(unaPersona) {
        return unaPersona.leGusta(objetoMostrador) || unaPersona.leGusta(objetoVidriera)
    }
}