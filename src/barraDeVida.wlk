import wollok.game.*
import score.*
import nave.*
import sonidoTipeo.*
import listaNivel1.*
import config1.*
import fondo.*

object barraDeVida {
	var property valor = 18
	
	const position = game.at(647, 200)
	
	method image() = valor.toString() + ".png"
	method position() = position

	method perderUnaBarra(){
    	valor = 10.max(valor - 1) 
    }
    // intento de gameOver
    method perdiste(){
        if (valor == 10 ){
            terminar.end()
        }
    }
    
    method restart(){
    	valor = 18
    }
}

object gameOver {
    const position = game.at(0,0)
    var property image = "gameOver.png"

    method position() = position
    
    method perderAutomaticamente(){
    	terminar.end()
    }
}









