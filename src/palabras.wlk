import wollok.game.*
import letra.*
import palabraFijada.*
import score.*
import barraDeVida.*
import input.*
import listaNivel1.*

class Palabra{
    const property letras 	
    
    //NUEVOOOOOOOOOOOOO  le settea a todas las letras de la palabra la misma posicion y luego se modifica la posicion para la siguiente palabra.
   method corregirPosicionesEjeX(){
    	(0..letras.size()-1).forEach({pos => letras.get(pos).moverDerecha(posicionesRandom.posElegida())})
    	posicionesRandom.changePosition()
    }
    
   method corregirPosiciones(){
    	(1..letras.size()-1).forEach({pos => letras.get(pos).moverDerecha(pos * 17)})
    }
 
    method aparecer(){
    	self.corregirPosicionesEjeX() // ACAAAAAAAAAAAAAAAAAAAA
    	self.corregirPosiciones()
		(0..letras.size()-1).forEach({pos => game.addVisual(letras.get(pos))})
	}
	
	method caerConEstilo(){
		(0..letras.size()-1).forEach({pos => letras.get(pos).caerConEstilo()})
	}
	
	//MOSTRARRRRRRR devuelve la primer letra de una instancia palabra
	method primerLetra(){
		return letras.first()
	}
	
	//MOSTRARRRRRRR BOOLEANO  si la primer letra de la palabra coincide con el input
	method coincideConElInput(){
		return self.primerLetra().coincideConInput()
	}
	
	//MOSTRARRRRR borra de la palabra la primer letra y tmbn la quita del tablero
	method borrarPrimerLetra(){
		game.removeVisual(self.primerLetra())
		letras.remove(self.primerLetra())
		//SONIDOOOOOOOOOOO DE EXPLOSIONNNNNNNNNNN
	}
	
	//MOSTRARR BOOLEANO para saber si podes borrar 
	method tieneLetras(){
		return letras != []
	}
	
	method llegoAlHorizonte(){
		return letras.any({l=> l.position().y() <= 111 })
	}
	
}

// POSICIONES ALEATORIAS PARA PALABRAS QUE CAENNNNNNNN
object posicionesRandom{
	var property posElegida = 151

	method changePosition(){
		self.posElegida(110.randomUpTo(467))
	} 
	
}


