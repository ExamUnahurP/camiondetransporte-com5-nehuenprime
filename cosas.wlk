object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumbleblee{
    method peso() = 800
    var estaTransformado = false

    method peligrosidad(){
        if(estaTransformado){
            return 30
        }else{
            return 15
        }
    }
    
}

object paqueteDeLadrillos{
    method peso() = 2
    method peligrosidad() = 2
    
}