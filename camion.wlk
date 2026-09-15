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
    
}