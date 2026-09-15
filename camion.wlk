object camion {
    var cargas = []
    const tara = 1000

    method cargar(cosa){
        cargas.add(cosa)
    }
    method descargar(cosa){
        carga.remove(cosa)
    }
    method pesoTotal(){
        return tara  + cargas.sum{(cosa => cosa.peso())}
    }
    method esPar(){
        return cargas.all({cosa => cosa.peso() % 2 == 0})
    }
    method PesaTal(valor){
        return cargas.any({cosa => cosa.peso() == valor})
    }
    method elPrimeroEsPeligroso(nivelDePeligrosidad){
        return cargas.find({cosa => cosa.peligrosidad() == nivelDePeligrosidad})
    }
    method cosasQueSuperanPeligrosidad(nivelDePeligrosidad){
        return cargas.filter({cosa => cosa.peligrosidad() > nivelDePeligrosidad})
    }
    method cosasMasPeligrosasQue(cosaDada){
        return cargas.filter[(cosa => cosa.peligrosidad() > cosaDada.peligrosidad())]
    }
    method estaExcedido(){
        return self.pesoTotal() > 2500
    }
    method puedeCircular(nivelMaximo){
        return not self.estaExcedido() and cargas.all({cosa => cosa.peligrosidad() < nivelMaximo})
    }
}