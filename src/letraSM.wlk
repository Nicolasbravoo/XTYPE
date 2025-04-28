import wollok.game.*
import input.*
import palabraFijadaSM.*
import scoreSM.*
import listaNivelSM.*
import barraDeVidaSM.*
import diccionario.*
import palabrasSM.*

class Letra{
	var property letra
	var property position = game.at(0, 950)  	// La posición actual en el tablero  
    
    method image() = letra + ".png" 
    

    method caerConEstilo(){
  
    	position = position.down(velocidadDeCaida.valor()) 	

    }
    
    method moverDerecha(valor){
    	position = position.right(valor)
    }
    
    //MOSTRARRR compara una instancia de letra con un input que se haga
    method coincideConInput(){
    	return letra == input.letra()
    }
    
    
}
// NUEVOOOO...efecto de explosion en las letras tipeadas...!!!!!!!!!!!!
class Explosion{
	var property position 
	 	
	var property image = "explosion.png"
	
	method aparecer(){
		game.addVisual(self)
	}
	
	method desaparecer(){
		game.removeVisual(self)
	}
	
}

//NUEVOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OBJETO QUE ENTREGA UN VALOR UNICO PARA TODAS LAS LETRAS
object velocidadDeCaida{
	const property valor = 8
		
}